.class abstract LO;
.super Ljava/lang/Object;

# interfaces
.implements LZ;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:LS;

.field private e:Ldw;

.field private f:LeX;

.field private g:LT;

.field private h:LeQ;

.field private i:Ldp;

.field private j:LeK;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LO;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LO;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LO;->k:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LO;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v3, p0, LO;->h:LeQ;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, LO;->h:LeQ;

    invoke-interface {v2}, LeQ;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "last_update_check"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LO;->h:LeQ;

    iget-object v4, p0, LO;->h:LeQ;

    invoke-interface {v4}, LeQ;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_update_check"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v2, v4}, LeQ;->a(Landroid/content/SharedPreferences$Editor;)Z

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, LO;->i:Ldp;

    invoke-interface {v2}, Ldp;->a()J

    move-result-wide v10

    iget-object v2, p0, LO;->f:LeX;

    iget v2, v2, LeX;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, LcG;->a()LcT;

    invoke-static {}, LcG;->a()LcT;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Check for updates last check time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, LO;->k:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v4, p0, LO;->k:J

    add-long/2addr v2, v4

    invoke-static {}, LcG;->a()LcT;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Check for updates current time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", next check time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v2, v10, v2

    if-ltz v2, :cond_1

    :try_start_1
    invoke-static {}, LcG;->a()LcT;

    new-instance v2, Ldi;

    invoke-direct {v2}, Ldi;-><init>()V

    iget-object v2, p0, LO;->c:Landroid/content/Context;

    invoke-static {v2}, Ldi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, LO;->e:Ldw;

    invoke-virtual {v2}, Ldw;->c()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Ldx;->c:Ldx;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    new-instance v2, LU;

    iget-object v3, p0, LO;->d:LS;

    iget-object v4, p0, LO;->d:LS;

    iget-object v4, v4, LcQ;->p:Landroid/content/Context;

    const-string v5, "com.crashlytics.ApiEndpoint"

    invoke-static {v4, v5}, Ldk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LO;->f:LeX;

    iget-object v5, v5, LeX;->a:Ljava/lang/String;

    iget-object v6, p0, LO;->j:LeK;

    new-instance v7, LW;

    invoke-direct {v7}, LW;-><init>()V

    invoke-direct/range {v2 .. v7}, LU;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;LW;)V

    iget-object v3, p0, LO;->g:LT;

    invoke-virtual {v2, v9, v8, v3}, LU;->a(Ljava/lang/String;Ljava/lang/String;LT;)LV;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-wide v10, p0, LO;->k:J

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    iput-wide v10, p0, LO;->k:J

    throw v2

    :cond_1
    invoke-static {}, LcG;->a()LcT;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;LS;Ldw;LeX;LT;LeQ;Ldp;LeK;)V
    .locals 2

    iput-object p1, p0, LO;->c:Landroid/content/Context;

    iput-object p2, p0, LO;->d:LS;

    iput-object p3, p0, LO;->e:Ldw;

    iput-object p4, p0, LO;->f:LeX;

    iput-object p5, p0, LO;->g:LT;

    iput-object p6, p0, LO;->h:LeQ;

    iput-object p7, p0, LO;->i:Ldp;

    iput-object p8, p0, LO;->j:LeK;

    iget-object v0, p0, LO;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LO;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LO;->a()V

    :cond_0
    return-void
.end method
