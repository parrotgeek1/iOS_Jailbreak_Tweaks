.class Lcom/spotify/tv/android/SpotifyTVActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcq;


# instance fields
.field final synthetic a:Lcom/spotify/tv/android/SpotifyTVActivity;


# direct methods
.method constructor <init>(Lcom/spotify/tv/android/SpotifyTVActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/spotify/tv/android/SpotifyTVActivity$1;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity$1;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-static {v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->a(Lcom/spotify/tv/android/SpotifyTVActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity$1;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-static {v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->b(Lcom/spotify/tv/android/SpotifyTVActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity$1;->a:Lcom/spotify/tv/android/SpotifyTVActivity;

    const-string v1, "window.connectionChange"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/tv/android/SpotifyTVActivity;->a(Lcom/spotify/tv/android/SpotifyTVActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
