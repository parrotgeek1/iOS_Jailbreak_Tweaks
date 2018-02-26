.class public LbR;
.super LcQ;

# interfaces
.implements LbI;


# instance fields
.field public a:LbM;

.field private final b:LbU;

.field private final c:LbT;

.field private d:LbQ;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/crashlytics/android/ndk/JniNativeApi;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/JniNativeApi;-><init>()V

    invoke-direct {p0, v0}, LbR;-><init>(LbU;)V

    return-void
.end method

.method private constructor <init>(LbU;)V
    .locals 1

    invoke-direct {p0}, LcQ;-><init>()V

    iput-object p1, p0, LbR;->b:LbU;

    new-instance v0, LbT;

    invoke-direct {v0}, LbT;-><init>()V

    iput-object v0, p0, LbR;->c:LbT;

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, LcG;->a()LcT;

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Ldk;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    const-string v1, "Error closing crash data file."

    invoke-static {v2, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "CrashlyticsNdk"

    const-string v5, "Failed to read NDK crash data."

    invoke-interface {v3, v4, v5, v1}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v1, "Error closing crash data file."

    invoke-static {v2, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "Error closing crash data file."

    invoke-static {v2, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(LbQ;Lah;)Z
    .locals 5

    iput-object p1, p0, LbR;->d:LbQ;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, LbQ;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LbR;->b:LbU;

    iget-object v3, p0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-interface {v2, v0, v3}, LbU;->a(Ljava/lang/String;Landroid/content/res/AssetManager;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iput-object p0, p2, Lah;->m:LbI;

    invoke-static {}, LcG;->a()LcT;

    :cond_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "CrashlyticsNdk"

    const-string v4, "Error initializing CrashlyticsNdk"

    invoke-interface {v2, v3, v4, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public static f()LbR;
    .locals 1

    const-class v0, LbR;

    invoke-static {v0}, LcG;->a(Ljava/lang/Class;)LcQ;

    move-result-object v0

    check-cast v0, LbR;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.2.90"

    return-object v0
.end method

.method protected final a_()Z
    .locals 3

    const-class v0, Lah;

    invoke-static {v0}, LcG;->a(Ljava/lang/Class;)LcQ;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Leh;

    const-string v1, "CrashlyticsNdk requires Crashlytics"

    invoke-direct {v0, v1}, Leh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, LbY;

    new-instance v1, LeP;

    invoke-direct {v1, p0}, LeP;-><init>(LcQ;)V

    invoke-virtual {v1}, LeP;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, LbY;-><init>(Ljava/io/File;)V

    invoke-static {}, Lah;->f()Lah;

    move-result-object v1

    new-instance v2, Laz;

    invoke-direct {v2}, Laz;-><init>()V

    invoke-direct {p0, v0, v1}, LbR;->a(LbQ;Lah;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android.crashlytics-ndk"

    return-object v0
.end method

.method public final c()LbM;
    .locals 1

    iget-object v0, p0, LbR;->a:LbM;

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LbR;->g()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Void;
    .locals 9

    iget-object v0, p0, LbR;->d:LbQ;

    invoke-interface {v0}, LbQ;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LcG;->a()LcT;

    invoke-static {v0}, LbR;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, LbR;->c:LbT;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "time"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v8}, LbT;->b(Lorg/json/JSONObject;)LbN;

    move-result-object v4

    invoke-static {v8}, LbT;->d(Lorg/json/JSONObject;)[LbO;

    move-result-object v5

    invoke-virtual {v1, v8}, LbT;->c(Lorg/json/JSONObject;)[LbJ;

    move-result-object v6

    invoke-static {v0}, LbT;->a(Ljava/lang/String;)[LbK;

    move-result-object v7

    invoke-static {v8}, LbT;->a(Lorg/json/JSONObject;)LbL;

    move-result-object v8

    new-instance v1, LbM;

    invoke-direct/range {v1 .. v8}, LbM;-><init>(JLbN;[LbO;[LbJ;[LbK;LbL;)V

    iput-object v1, p0, LbR;->a:LbM;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, LbR;->d:LbQ;

    invoke-interface {v0}, LbQ;->c()V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v1, "CrashlyticsNdk"

    const-string v2, "Crashlytics failed to parse prior crash data."

    invoke-interface {v0, v1, v2}, LcT;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
