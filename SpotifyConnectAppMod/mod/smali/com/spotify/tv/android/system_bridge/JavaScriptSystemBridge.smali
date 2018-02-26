.class public Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;
.super Ljava/lang/Object;


# instance fields
.field private mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;


# direct methods
.method public constructor <init>(Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[WebView] ERROR: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exitApplication()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->exitApplication()V

    return-void
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getBrandName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getBuildInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getConnectionStatus()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->getVolume()I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[WebView] %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {}, Lcx;->a()V

    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;->mJsBridgeCallbackListener:Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;

    invoke-interface {v0, p1}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;->setVolume(I)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "[WebView] WARNING: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
