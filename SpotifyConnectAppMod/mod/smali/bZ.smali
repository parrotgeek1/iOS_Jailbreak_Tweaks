.class public final LbZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/spotify/tv/android/BridgeService;


# direct methods
.method public constructor <init>(Lcom/spotify/tv/android/BridgeService;)V
    .locals 0

    iput-object p1, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Media session is not null. Active:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v2}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    const-class v3, Lcom/spotify/tv/android/RemoteControlReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v4, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    const-string v5, "spotify-android-tv-media-session"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v0, v6}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    invoke-static {v2, v3}, Lcom/spotify/tv/android/BridgeService;->a(Lcom/spotify/tv/android/BridgeService;Landroid/support/v4/media/session/MediaSessionCompat;)Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    iget-object v0, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    iget-object v0, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    new-instance v2, Lca;

    invoke-direct {v2, p0}, Lca;-><init>(LbZ;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v2, 0x636

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iget-object v1, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v1}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v0, p0, LbZ;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    goto :goto_0
.end method
