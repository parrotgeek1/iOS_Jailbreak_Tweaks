.class public final Lck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/spotify/tv/android/SpotifyTVActivity;


# direct methods
.method public constructor <init>(Lcom/spotify/tv/android/SpotifyTVActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lck;->b:Lcom/spotify/tv/android/SpotifyTVActivity;

    iput-object p2, p0, Lck;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lck;->b:Lcom/spotify/tv/android/SpotifyTVActivity;

    iget-object v1, p0, Lck;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/tv/android/SpotifyTVActivity;->a(Lcom/spotify/tv/android/SpotifyTVActivity;Ljava/lang/String;)V

    return-void
.end method
