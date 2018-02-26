.class public final Lcc;
.super Ljava/lang/Object;

# interfaces
.implements Lfv;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public final c:Lft;

.field public d:Ljava/util/concurrent/Semaphore;

.field public e:Landroid/net/wifi/WifiManager$MulticastLock;

.field public f:Lcom/spotify/tv/android/MdnsManager;

.field public g:Ljava/lang/String;

.field private final h:Lcd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcd;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcc;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcc;->b:Ljava/lang/String;

    new-instance v0, Lft;

    invoke-direct {v0}, Lft;-><init>()V

    iput-object v0, p0, Lcc;->c:Lft;

    iput-object p2, p0, Lcc;->h:Lcd;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcc;->d:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/spotify/tv/android/MdnsManager;

    invoke-direct {v0}, Lcom/spotify/tv/android/MdnsManager;-><init>()V

    iput-object v0, p0, Lcc;->f:Lcom/spotify/tv/android/MdnsManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "Cannot retrieve WiFi Manager"

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v1, "DiscoveryManager"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcc;->e:Landroid/net/wifi/WifiManager$MulticastLock;

    const-string v0, "Cannot create multicast lock"

    iget-object v1, p0, Lcc;->e:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcc;->e:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    :cond_0
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcc;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcc;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcc;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcc;->g:Ljava/lang/String;

    invoke-static {}, Lcx;->a()V

    const-string v1, "ZeroConf"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcz;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/16 v0, 0x192

    const-string v1, "ERROR-SPOTIFY-ERROR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcc;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"status\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"statusString\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"spotifyError\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(LfA;)LfB;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x192

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p1, LfA;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/goform/spotifyConnect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown path: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    new-instance v0, LfB;

    sget-object v1, LfD;->u:LfD;

    const-string v2, "Not found"

    invoke-direct {v0, v1, v2}, LfB;-><init>(LfD;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse URI : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, LfA;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    new-instance v0, LfB;

    sget-object v1, LfD;->I:LfD;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse URI : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, LfA;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LfB;-><init>(LfD;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "action"

    const-string v1, ""

    iget-object v2, p1, LfA;->g:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p1, LfA;->g:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_9

    iget-object v2, p1, LfA;->f:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v0, p1, LfA;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_3
    const-string v0, "getInfo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcx;->a()V

    new-instance v0, LfB;

    sget-object v1, LfD;->c:LfD;

    iget-object v2, p0, Lcc;->h:Lcd;

    invoke-interface {v2}, Lcd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LfB;-><init>(LfD;Ljava/lang/String;)V

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, LfB;->a:LfD;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, LfB;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, LfB;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Content-Length"

    iget-wide v2, v0, LfB;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfB;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    const-string v0, "addUser"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcx;->a()V

    iget-object v2, p1, LfA;->g:Ljava/util/Map;

    const-string v0, "userName"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "clientKey"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "blob"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcc;->h:Lcd;

    invoke-interface {v4, v0, v1, v2}, Lcd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, LfB;

    sget-object v1, LfD;->c:LfD;

    invoke-direct {p0}, Lcc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LfB;-><init>(LfD;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v0, "ZeroConf"

    invoke-static {v0, v5}, Lcz;->a(Ljava/lang/String;Z)V

    new-instance v0, LfB;

    sget-object v2, LfD;->c:LfD;

    const-string v4, "ERROR-SPOTIFY-ERROR"

    invoke-static {v6, v4, v1}, Lcc;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, LfB;-><init>(LfD;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const-string v0, "resetUsers"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcc;->h:Lcd;

    invoke-interface {v0}, Lcd;->b()I

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, LfB;

    sget-object v1, LfD;->c:LfD;

    const/16 v2, 0x65

    const-string v4, "OK"

    invoke-static {v2, v4, v5}, Lcc;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LfB;-><init>(LfD;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    new-instance v0, LfB;

    sget-object v2, LfD;->c:LfD;

    const-string v4, "ERROR-SPOTIFY-ERROR"

    invoke-static {v6, v4, v1}, Lcc;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, LfB;-><init>(LfD;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    invoke-static {}, Lcx;->a()V

    new-instance v0, LfB;

    sget-object v1, LfD;->q:LfD;

    const/16 v2, 0x12e

    const-string v4, "ERROR-INVALID-ACTION"

    invoke-static {v2, v4, v5}, Lcc;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LfB;-><init>(LfD;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    move-object v3, v1

    goto/16 :goto_3

    :cond_9
    move-object v0, v2

    goto/16 :goto_2
.end method
