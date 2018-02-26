.class public final Lcj;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/spotify/tv/android/SpotifyTVActivity;


# direct methods
.method public constructor <init>(Lcom/spotify/tv/android/SpotifyTVActivity;)V
    .locals 0

    iput-object p1, p0, Lcj;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcj;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-static {v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->d(Lcom/spotify/tv/android/SpotifyTVActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcj;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-static {v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->e(Lcom/spotify/tv/android/SpotifyTVActivity;)Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcj;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-static {v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->c(Lcom/spotify/tv/android/SpotifyTVActivity;)V

    :cond_0
    return-void
.end method
