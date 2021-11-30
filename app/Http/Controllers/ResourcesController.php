<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;


class ResourcesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        $posts = Post::all();
        return view('blog.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('blog.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // Récupération des valeurs des inputs
        $title = $request->input('title');
        $content = $request->input('content');
        $author = $request->input('author');
        $follower = $request->input('follower');

        // Assignation des valeurs dans un tableau
        $post = [
            'title' => $title,
            'content' => $content,
            'author' => $author,
            'follower' => $follower
        ];

        // Vérification de la validité des données saisies
        $request->validate([
            'title' => 'required|alpha|max:8',
            'content' => 'required|alpha|min:100|max:255',
            'author' => 'required|alpha|min:2',
            'follower' => 'required|integer|numeric',
        ]);

        // Création du post dans la base de données
        Post::create($post);
        // Redirection sur la route blog.index
        return redirect()->route('blog.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Récupération du post en fonction del'id
        $post = Post::find($id);
        //Affichage de la vue show et transfert des données
        return view('blog.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Récupération du post en fonction del'id
        $post = Post::find($id);
        //Affichage de la vue edit et transfert des données
        return view('blog.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Vérification de la validité des données saisies
        $request->validate([
            'title' => 'required|alpha|max:8',
            'content' => 'required|alpha|min:100|max:255',
            'author' => 'required|alpha|min:2',
            'follower' => 'required|integer|numeric',

        ]);

        // Si données valides
        try {
            // Récupération du post en fonction del'id
            $post = Post::findOrFail($id);

            // Récupération des valeurs des inputs
            $post->title = $request->input('title');
            $post->content = $request->input('content');
            $post->author = $request->input('author');
            $post->follower = $request->input('follower');

            // Sauvegarde des modifications
            $post->save();
            // Rtour sur la page + message de validation
            return redirect()->back()->with('success', "Votre post a bien été modifié");

            // Si données invalides
        } catch (\Exception $e) {

            // // Retour sur la page + message d'erreur
            return redirect()->back()->with('error', "Erreur lors de la modification du post");
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Récupération du post en fonction del'id
        $post = Post::find($id);
        // Suppression du post
        $post->delete();

        // Retour sur la page
        return redirect()->back();
    }
}
