.class public Lcom/spotify/tv/android/SpotifyTVActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcf;
.implements Lch;
.implements Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lce;

.field private c:Landroid/webkit/WebView;

.field private d:Z

.field private e:Lcq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->d:Z

    new-instance v0, Lcom/spotify/tv/android/SpotifyTVActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/tv/android/SpotifyTVActivity$1;-><init>(Lcom/spotify/tv/android/SpotifyTVActivity;)V

    iput-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->e:Lcq;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/spotify/tv/android/SpotifyTVActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "window.esdkEvent"

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/spotify/tv/android/SpotifyTVActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/tv/android/SpotifyTVActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/spotify/tv/android/SpotifyTVActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/tv/android/SpotifyTVActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->d:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/tv/android/SpotifyTVActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/tv/android/SpotifyTVActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcl;

    invoke-direct {v0, p0, p1, p2}, Lcl;-><init>(Lcom/spotify/tv/android/SpotifyTVActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c()V
    .locals 3

    sget-object v0, Lcb;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/index.html"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {}, Lcx;->a()V

    iget-object v1, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcj;

    invoke-direct {v2, p0}, Lcj;-><init>(Lcom/spotify/tv/android/SpotifyTVActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "file:///android_asset/modpage.html"

    goto :goto_0
.end method

.method public static synthetic c(Lcom/spotify/tv/android/SpotifyTVActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->d()V

    return-void
.end method

.method public static synthetic d(Lcom/spotify/tv/android/SpotifyTVActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "file:///android_asset/offline.html"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {}, Lcx;->a()V

    iput-boolean v3, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->d:Z

    iget-object v1, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->e:Lcq;

    invoke-static {p0, v0}, Lco;->b(Landroid/content/Context;Lcq;)V

    return-void
.end method

.method public static synthetic e(Lcom/spotify/tv/android/SpotifyTVActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->d:Z

    return v0
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCreateSpotifyTVActivity(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x13

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->setContentView(I)V

    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->a:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->setVolumeControlStream(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_0

    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    invoke-static {}, Lcx;->a()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Lcb;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Lcb;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_2

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "databases"

    invoke-virtual {p0, v1, v2}, Lcom/spotify/tv/android/SpotifyTVActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcg;

    invoke-direct {v1, p0}, Lcg;-><init>(Lch;)V

    const-string v2, "SpBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;

    invoke-direct {v1, p0}, Lcom/spotify/tv/android/system_bridge/JavaScriptSystemBridge;-><init>(Lcom/spotify/tv/android/system_bridge/JavaScriptSystemCallbackListener;)V

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/spotify/tv/android/BridgeService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0, v0, p0, v3}, Lcom/spotify/tv/android/SpotifyTVActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private onDestroySpotifyTVActivity()V
    .locals 2

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    invoke-interface {v0, p0}, Lce;->b(Lcf;)V

    invoke-virtual {p0, p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->e()V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->c:Landroid/webkit/WebView;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method private onPauseSpotifyTVActivity()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method private onResumeSpotifyTVActivity()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "com.spotify.tv.android.service.action.client.FOREGROUND"

    invoke-static {p0, v0}, Lcom/spotify/tv/android/BridgeService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    invoke-interface {v0, p1}, Lce;->a(Ljava/lang/String;)I

    move-result v0

    const-string v1, "JS -> eSDK"

    invoke-static {v1, p1}, Lcs;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final a()V
    .locals 0

    invoke-static {}, Lcx;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "eSDK -> JS"

    invoke-static {v0, p1}, Lcs;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lck;

    invoke-direct {v0, p0, p1}, Lck;-><init>(Lcom/spotify/tv/android/SpotifyTVActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/SpotifyTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-static {}, Lcx;->a()V

    return-void
.end method

.method public exitApplication()V
    .locals 0

    invoke-virtual {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->finish()V

    return-void
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lct;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildInfo()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "build.info"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {}, Lcx;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public getConnectionStatus()I
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    invoke-interface {v0}, Lce;->b()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lct;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    invoke-static {}, Lct;->c()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lct;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    invoke-interface {v0}, Lce;->a()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/spotify/tv/android/SpotifyTVActivity;->onCreateSpotifyTVActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->onDestroySpotifyTVActivity()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->onPauseSpotifyTVActivity()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->onResumeSpotifyTVActivity()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    invoke-static {}, Lcx;->a()V

    const-string v0, "TvActivity"

    const-string v1, "Bridge service connected"

    invoke-static {v0, v1}, Lcs;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lce;

    iput-object p2, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    invoke-interface {v0}, Lce;->c()V

    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    invoke-interface {v0, p0}, Lce;->a(Lcf;)V

    invoke-static {p0}, Lco;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->d()V

    :goto_0
    iget-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->e:Lcq;

    invoke-static {p0, v0}, Lco;->a(Landroid/content/Context;Lcq;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->c()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcx;->a()V

    const-string v0, "TvActivity"

    const-string v1, "Bridge service disconnected"

    invoke-static {v0, v1}, Lcs;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/tv/android/SpotifyTVActivity;->b:Lce;

    invoke-direct {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->e()V

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    return-void
.end method
