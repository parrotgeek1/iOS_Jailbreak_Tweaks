.class public Lcom/spotify/tv/android/MdnsManager;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Thread;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    const/4 v0, 0x4

    iput v0, p0, Lcom/spotify/tv/android/MdnsManager;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/spotify/tv/android/MdnsManager;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/tv/android/MdnsManager;->startMDNS(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private native startMDNS(Ljava/lang/String;ILjava/lang/String;I)I
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MDNS thread already started!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/spotify/tv/android/MdnsManager;->c:Ljava/lang/String;

    iput p2, p0, Lcom/spotify/tv/android/MdnsManager;->d:I

    iput-object p3, p0, Lcom/spotify/tv/android/MdnsManager;->e:Ljava/lang/String;

    iput p4, p0, Lcom/spotify/tv/android/MdnsManager;->f:I

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lci;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lci;-><init>(Lcom/spotify/tv/android/MdnsManager;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Problem occurred starting MDNS thread"

    iget-object v1, p0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method native stopMDNS()I
.end method

.method native updateMDNS()I
.end method
