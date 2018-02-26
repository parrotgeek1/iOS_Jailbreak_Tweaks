.class final Lca;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# instance fields
.field final synthetic a:LbZ;


# direct methods
.method constructor <init>(LbZ;)V
    .locals 0

    iput-object p1, p0, Lca;->a:LbZ;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p1}, Lcom/spotify/tv/android/BridgeService;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-static {}, Lcx;->a()V

    return-void
.end method

.method public final onPlay()V
    .locals 0

    invoke-static {}, Lcx;->a()V

    return-void
.end method

.method public final onSkipToNext()V
    .locals 0

    invoke-static {}, Lcx;->a()V

    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 0

    invoke-static {}, Lcx;->a()V

    return-void
.end method
