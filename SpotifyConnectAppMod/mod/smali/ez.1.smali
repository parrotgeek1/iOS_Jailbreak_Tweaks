.class public final Lez;
.super Ljava/lang/Object;

# interfaces
.implements LeK;


# instance fields
.field private final a:LcT;

.field private b:LeL;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LcF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LcF;-><init>(B)V

    invoke-direct {p0, v0}, Lez;-><init>(LcT;)V

    return-void
.end method

.method public constructor <init>(LcT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez;->a:LcT;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lez;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lez;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lez;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lez;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lez;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lez;->c:Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    iget-object v0, p0, Lez;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lez;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lez;->b:LeL;

    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    new-instance v3, LeN;

    invoke-interface {v1}, LeL;->a()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v1}, LeL;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, LeN;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, LeM;

    invoke-direct {v4, v3, v1}, LeM;-><init>(LeN;LeL;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lez;->a:LcT;

    const-string v3, "Fabric"

    const-string v4, "Exception while validating pinned certs"

    invoke-interface {v2, v3, v4, v1}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/util/Map;)LeC;
    .locals 3

    sget-object v0, LeA;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported HTTP method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p2, p3}, LeC;->a(Ljava/lang/CharSequence;Ljava/util/Map;)LeC;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lez;->b:LeL;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lez;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LeC;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object v1

    :pswitch_1
    invoke-static {p2, p3}, LeC;->b(Ljava/lang/CharSequence;Ljava/util/Map;)LeC;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    invoke-static {p2}, LeC;->a(Ljava/lang/CharSequence;)LeC;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_3
    invoke-static {p2}, LeC;->b(Ljava/lang/CharSequence;)LeC;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(LeL;)V
    .locals 1

    iget-object v0, p0, Lez;->b:LeL;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lez;->b:LeL;

    invoke-direct {p0}, Lez;->a()V

    :cond_0
    return-void
.end method
