.class Lcom/spotify/tv/android/BridgeService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcq;


# instance fields
.field final synthetic a:Lcom/spotify/tv/android/BridgeService;


# direct methods
.method constructor <init>(Lcom/spotify/tv/android/BridgeService;)V
    .locals 0

    iput-object p1, p0, Lcom/spotify/tv/android/BridgeService$2;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService$2;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->d(Lcom/spotify/tv/android/BridgeService;)Lcc;

    move-result-object v0

    invoke-static {}, Lcx;->a()V

    iget-object v0, v0, Lcc;->f:Lcom/spotify/tv/android/MdnsManager;

    iget-object v1, v0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    if-nez v1, :cond_1

    const-string v0, "MDNS thread is not started"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_1
    invoke-static {}, Lb;->c()Lb;

    move-result-object v1

    new-instance v2, Lt;

    const-string v3, "Connection Change"

    invoke-direct {v2, v3}, Lt;-><init>(Ljava/lang/String;)V

    const-string v3, "Type"

    invoke-virtual {v2, v3, v0}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ld;

    move-result-object v0

    check-cast v0, Lt;

    invoke-virtual {v1, v0}, Lb;->a(Lt;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/spotify/tv/android/MdnsManager;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MDNS thread is dead"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcx;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lcom/spotify/tv/android/MdnsManager;->b:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/spotify/tv/android/MdnsManager;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/spotify/tv/android/MdnsManager;->b:I

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, v0, Lcom/spotify/tv/android/MdnsManager;->b:I

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lcx;->a()V

    iget-object v1, v0, Lcom/spotify/tv/android/MdnsManager;->c:Ljava/lang/String;

    iget v2, v0, Lcom/spotify/tv/android/MdnsManager;->d:I

    iget-object v3, v0, Lcom/spotify/tv/android/MdnsManager;->e:Ljava/lang/String;

    iget v4, v0, Lcom/spotify/tv/android/MdnsManager;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/spotify/tv/android/MdnsManager;->a(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcx;->a()V

    invoke-virtual {v0}, Lcom/spotify/tv/android/MdnsManager;->updateMDNS()I

    goto :goto_0

    :pswitch_0
    const-string v0, "Mobile"

    goto :goto_1

    :pswitch_1
    const-string v0, "Wired"

    goto :goto_1

    :pswitch_2
    const-string v0, "Wireless"

    goto :goto_1

    :pswitch_3
    const-string v0, "Offline"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
