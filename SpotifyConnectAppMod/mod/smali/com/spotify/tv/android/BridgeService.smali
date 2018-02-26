.class public Lcom/spotify/tv/android/BridgeService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcd;
.implements Lcn;
.implements Lcom/spotify/tv/android/bridge/BridgeCallbackListener;


# instance fields
.field private final a:Landroid/os/IBinder;

.field private b:Lcom/spotify/tv/android/bridge/JavascriptBridge;

.field private c:Lcm;

.field private final d:Ljava/util/Set;

.field private e:Lcc;

.field private f:Z

.field private g:Z

.field private h:Landroid/media/AudioManager;

.field private i:Landroid/support/v4/media/session/MediaSessionCompat;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tvbridge_android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "spotify_tv_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;

    invoke-direct {v0, p0, v1}, Lcom/spotify/tv/android/BridgeService$BridgeBinder;-><init>(Lcom/spotify/tv/android/BridgeService;B)V

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->a:Landroid/os/IBinder;

    new-instance v0, Lcom/spotify/tv/android/bridge/JavascriptBridge;

    invoke-direct {v0, p0}, Lcom/spotify/tv/android/bridge/JavascriptBridge;-><init>(Lcom/spotify/tv/android/bridge/BridgeCallbackListener;)V

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->b:Lcom/spotify/tv/android/bridge/JavascriptBridge;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->d:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->f:Z

    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->g:Z

    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->k:Z

    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->l:Z

    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->m:Z

    new-instance v0, Lcom/spotify/tv/android/BridgeService$2;

    invoke-direct {v0, p0}, Lcom/spotify/tv/android/BridgeService$2;-><init>(Lcom/spotify/tv/android/BridgeService;)V

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->n:Lcq;

    return-void
.end method

.method static synthetic a(Lcom/spotify/tv/android/BridgeService;)I
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->c:Lcm;

    invoke-virtual {v0}, Lcm;->a()I

    move-result v0

    invoke-static {}, Lcx;->a()V

    return v0
.end method

.method static synthetic a(Lcom/spotify/tv/android/BridgeService;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->b:Lcom/spotify/tv/android/bridge/JavascriptBridge;

    invoke-virtual {v0, p1}, Lcom/spotify/tv/android/bridge/JavascriptBridge;->executeAsync(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/tv/android/BridgeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/KeyEvent;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Lcom/spotify/tv/android/BridgeService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/spotify/tv/android/BridgeService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic a(Lcom/spotify/tv/android/BridgeService;Landroid/support/v4/media/session/MediaSessionCompat;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    iput-object p1, p0, Lcom/spotify/tv/android/BridgeService;->i:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->b:Lcom/spotify/tv/android/bridge/JavascriptBridge;

    invoke-virtual {v0, p1}, Lcom/spotify/tv/android/bridge/JavascriptBridge;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "ns"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "func"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "args"

    invoke-static {p2}, Lcom/spotify/tv/android/BridgeService;->a([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a([Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 4

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, Lcom/spotify/tv/android/BridgeService;->a(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spotify/tv/android/BridgeService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/spotify/tv/android/BridgeService;->a(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/tv/android/BridgeService;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Invalid bridge function"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/spotify/tv/android/BridgeService;Lcf;)V
    .locals 2

    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->d:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic a(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0}, Lcom/spotify/tv/android/BridgeService;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private varargs b(Ljava/lang/String;I[Ljava/lang/Object;)I
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/spotify/tv/android/BridgeService;->a(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spotify/tv/android/BridgeService;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    double-to-int v0, v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v2, "Invalid bridge function"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to parse bridge return value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/spotify/tv/android/BridgeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/spotify/tv/android/BridgeService;->d()V

    return-void
.end method

.method static synthetic b(Lcom/spotify/tv/android/BridgeService;Lcf;)V
    .locals 2

    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->d:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {}, Lcx;->a()V

    return v3
.end method

.method public static synthetic c(Lcom/spotify/tv/android/BridgeService;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->i:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method private c()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcx;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "BridgeService initializing"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [LcQ;

    new-instance v1, La;

    invoke-direct {v1}, La;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lcv;

    new-instance v2, Lcom/spotify/tv/android/util/CrashReportingHelper$1;

    invoke-direct {v2}, Lcom/spotify/tv/android/util/CrashReportingHelper$1;-><init>()V

    invoke-direct {v1, v2}, Lcv;-><init>(Lcw;)V

    aput-object v1, v0, v7

    invoke-static {p0, v0}, LcG;->a(Landroid/content/Context;[LcQ;)LcG;

    invoke-static {}, La;->d()La;

    move-result-object v0

    iget-object v1, v0, La;->c:Lah;

    const-string v2, "experience"

    sget-object v0, Lcb;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "connect_only"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lah;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "display_name"

    invoke-static {p0}, Lct;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model_name"

    invoke-static {}, Lct;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_type"

    invoke-static {}, Lct;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lah;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lct;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lah;->l:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Lah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lah;->d:Ljava/lang/String;

    iget-object v0, v1, Lah;->c:LaD;

    iget-object v2, v1, Lah;->d:Ljava/lang/String;

    iget-object v3, v1, Lah;->f:Ljava/lang/String;

    iget-object v1, v1, Lah;->e:Ljava/lang/String;

    iget-object v4, v0, LaD;->f:Lav;

    new-instance v5, LaN;

    invoke-direct {v5, v0, v2, v3, v1}, LaN;-><init>(LaD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lav;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->j:Landroid/os/Handler;

    invoke-static {}, Lcx;->a()V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/BridgeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->h:Landroid/media/AudioManager;

    new-instance v0, Lcm;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p0}, Lcm;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcn;)V

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->c:Lcm;

    invoke-virtual {p0}, Lcom/spotify/tv/android/BridgeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "unique_id"

    invoke-static {v0}, Lct;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "display_name"

    invoke-static {p0}, Lct;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model_name"

    invoke-static {}, Lct;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "brand_name"

    invoke-static {}, Lct;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_type"

    invoke-static {}, Lct;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "volume"

    iget-object v3, p0, Lcom/spotify/tv/android/BridgeService;->c:Lcm;

    invoke-virtual {v3}, Lcm;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating tv bridge with config: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    iget-object v2, p0, Lcom/spotify/tv/android/BridgeService;->b:Lcom/spotify/tv/android/bridge/JavascriptBridge;

    invoke-static {}, Lcom/spotify/tv/android/bridge/BridgeConfigHelper;->isLoggingEnabled()Z

    move-result v3

    invoke-static {p0}, Lcom/spotify/tv/android/bridge/BridgeConfigHelper;->getVolumeSteps(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v3, v4, v1}, Lcom/spotify/tv/android/bridge/JavascriptBridge;->create(Lcom/spotify/tv/android/bridge/BridgeCallbackListener;ZILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    invoke-static {}, Lcx;->a()V

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/spotify/tv/android/BridgeService;->c:Lcm;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcx;->a()V

    new-instance v0, Lcc;

    invoke-direct {v0, p0, p0}, Lcc;-><init>(Landroid/content/Context;Lcd;)V

    iput-object v0, p0, Lcom/spotify/tv/android/BridgeService;->e:Lcc;

    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->e:Lcc;

    iget-boolean v0, v1, Lcc;->a:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lcc;->e:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    const-string v0, "Acquired Wifi multicast lock"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, v1, Lcc;->c:Lft;

    iget-object v0, v0, Lft;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcc;->c:Lft;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, v0, Lft;->a:Ljava/net/ServerSocket;

    iget-object v0, v0, Lft;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, v1, Lcc;->c:Lft;

    iget-object v2, v0, Lft;->a:Ljava/net/ServerSocket;

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot bind a server that has not been initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start discovery manager: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v6, v1, Lcc;->a:Z

    iget-object v0, v1, Lcc;->e:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_2
    :goto_3
    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->n:Lcq;

    invoke-static {p0, v0}, Lco;->a(Landroid/content/Context;Lcq;)V

    iput-boolean v7, p0, Lcom/spotify/tv/android/BridgeService;->f:Z

    const-string v0, "BridgeService initialized"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "full_experience"

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v1, "Invalid json config"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, v0, Lft;->c:Z

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "HttpServer"

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Started HTTP server on port "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcc;->c:Lft;

    iget-object v2, v2, Lft;->a:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    iget-object v0, v1, Lcc;->c:Lft;

    iget-object v0, v0, Lft;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iget-object v2, v1, Lcc;->f:Lcom/spotify/tv/android/MdnsManager;

    iget-object v3, v1, Lcc;->b:Ljava/lang/String;

    const-string v4, "/goform/spotifyConnect"

    const/16 v5, 0x3c

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/spotify/tv/android/MdnsManager;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcc;->a:Z

    invoke-static {}, Lcx;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method static synthetic d(Lcom/spotify/tv/android/BridgeService;)Lcc;
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->e:Lcc;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->h:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->m:Z

    invoke-static {}, Lcx;->a()V

    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->j:Landroid/os/Handler;

    new-instance v2, LbZ;

    invoke-direct {v2, p0}, LbZ;-><init>(Lcom/spotify/tv/android/BridgeService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {v0}, Lcz;->a(Z)V

    invoke-static {}, Lcx;->a()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcx;->a()V

    const/16 v0, 0x9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/spotify/tv/android/BridgeService;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x2

    const-string v0, "zc"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    aput-object p2, v1, v3

    invoke-direct {p0, v0, v3, v1}, Lcom/spotify/tv/android/BridgeService;->b(Ljava/lang/String;I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    const-string v0, "zc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lct;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lct;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/spotify/tv/android/BridgeService;->a(Ljava/lang/String;[Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .locals 4

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    const-wide v2, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {}, Lcx;->a()V

    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->b:Lcom/spotify/tv/android/bridge/JavascriptBridge;

    invoke-virtual {v1, v0}, Lcom/spotify/tv/android/bridge/JavascriptBridge;->applyVolume(I)V

    return-void
.end method

.method public final b()I
    .locals 3

    const-string v0, "zc"

    const/4 v1, 0x3

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/spotify/tv/android/BridgeService;->b(Ljava/lang/String;I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v2, p0, Lcom/spotify/tv/android/BridgeService;->m:Z

    const-string v0, "Audio focus lost"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/tv/android/BridgeService;->e()V

    iput-boolean v2, p0, Lcom/spotify/tv/android/BridgeService;->g:Z

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->i:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    invoke-static {v2}, Lcz;->a(Z)V

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/spotify/tv/android/BridgeService;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio focus transient loss ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/tv/android/BridgeService;->e()V

    iget-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->k:Z

    iput-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->g:Z

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->i:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    invoke-static {v2}, Lcz;->a(Z)V

    goto :goto_0

    :pswitch_3
    iput-boolean v3, p0, Lcom/spotify/tv/android/BridgeService;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio focus gain ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcx;->a()V

    iget-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcx;->a()V

    const/16 v0, 0x8

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/spotify/tv/android/BridgeService;->a(I[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v2, p0, Lcom/spotify/tv/android/BridgeService;->g:Z

    :cond_1
    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->i:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    invoke-static {v3}, Lcz;->a(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Lcom/spotify/tv/android/BridgeService;->c()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v0, "Destroying BridgeService"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/tv/android/BridgeService;->stopForeground(Z)V

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->n:Lcq;

    invoke-static {p0, v0}, Lco;->b(Landroid/content/Context;Lcq;)V

    invoke-static {}, Lcx;->a()V

    invoke-virtual {p0}, Lcom/spotify/tv/android/BridgeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->c:Lcm;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcx;->a()V

    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->e:Lcc;

    iget-boolean v0, v1, Lcc;->a:Z

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcc;->f:Lcom/spotify/tv/android/MdnsManager;

    iget-object v0, v2, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MDNS thread is dead"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v1, Lcc;->c:Lft;

    iput-boolean v3, v0, Lft;->c:Z

    :try_start_0
    iget-object v0, v0, Lft;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, v1, Lcc;->e:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v0, "Released Wifi multicast lock"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v1, Lcc;->a:Z

    invoke-static {}, Lcx;->a()V

    :cond_1
    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->b:Lcom/spotify/tv/android/bridge/JavascriptBridge;

    invoke-virtual {v0}, Lcom/spotify/tv/android/bridge/JavascriptBridge;->release()V

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->h:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->i:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    const-string v0, "BridgeService destroyed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_2
    invoke-static {}, Lcx;->a()V

    invoke-virtual {v2}, Lcom/spotify/tv/android/MdnsManager;->stopMDNS()I

    const/4 v0, 0x4

    iput v0, v2, Lcom/spotify/tv/android/MdnsManager;->b:I

    :try_start_1
    iget-object v0, v2, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v6, v2, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v6, v2, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v6, v2, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "zc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->e:Lcc;

    iput-object p1, v0, Lcc;->g:Ljava/lang/String;

    iget-object v0, v0, Lcc;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/spotify/tv/android/BridgeService;->d:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf;

    invoke-interface {v0, p1, p2}, Lcf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onPlaybackEvent(II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/spotify/tv/android/BridgeService;->d()V

    invoke-static {p0}, Lcom/spotify/tv/android/SpotifyTVActivity;->a(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->k:Z

    invoke-static {v0}, Lcz;->a(I)V

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->k:Z

    iget-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/spotify/tv/android/BridgeService;->stopForeground(Z)V

    :cond_0
    invoke-static {v1}, Lcz;->a(I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set normalized volume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v1, p2

    const v2, 0x477fff00    # 65535.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService;->c:Lcm;

    invoke-virtual {v0, p2}, Lcm;->a(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcz;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/16 v5, 0x29a

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/spotify/tv/android/BridgeService;->c()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/spotify/tv/android/BridgeService;->b(Landroid/content/Intent;)Z

    :cond_2
    return v2

    :sswitch_0
    const-string v4, "com.spotify.tv.android.service.action.client.FOREGROUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "HACKDISABLEcom.spotify.tv.android.service.action.client.BACKGROUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/spotify/tv/android/BridgeService;->l:Z

    invoke-static {p0}, LcA;->a(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/spotify/tv/android/BridgeService;->startForeground(ILandroid/app/Notification;)V

    invoke-static {}, Lcx;->a()V

    invoke-static {v2}, Lcz;->b(Z)V

    goto :goto_1

    :pswitch_1
    iput-boolean v1, p0, Lcom/spotify/tv/android/BridgeService;->l:Z

    iget-boolean v0, p0, Lcom/spotify/tv/android/BridgeService;->k:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, LcA;->a(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/spotify/tv/android/BridgeService;->startForeground(ILandroid/app/Notification;)V

    :goto_2
    invoke-static {}, Lcx;->a()V

    invoke-static {v1}, Lcz;->b(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/spotify/tv/android/BridgeService;->stopForeground(Z)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0xd9450ef -> :sswitch_0
        0x2cbb9afc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
