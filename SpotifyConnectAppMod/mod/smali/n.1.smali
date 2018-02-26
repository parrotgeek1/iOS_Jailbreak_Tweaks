.class final Ln;
.super LcE;


# instance fields
.field private final a:LG;

.field private final b:Lq;


# direct methods
.method public constructor <init>(LG;Lq;)V
    .locals 0

    invoke-direct {p0}, LcE;-><init>()V

    iput-object p1, p0, Ln;->a:LG;

    iput-object p2, p0, Ln;->b:Lq;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Ln;->a:LG;

    sget-object v1, LK;->a:LK;

    invoke-virtual {v0, p1, v1}, LG;->a(Landroid/app/Activity;LK;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ln;->a:LG;

    sget-object v1, LK;->b:LK;

    invoke-virtual {v0, p1, v1}, LG;->a(Landroid/app/Activity;LK;)V

    iget-object v0, p0, Ln;->b:Lq;

    iput-boolean v2, v0, Lq;->e:Z

    iget-object v0, v0, Lq;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 8

    iget-object v0, p0, Ln;->a:LG;

    sget-object v1, LK;->c:LK;

    invoke-virtual {v0, p1, v1}, LG;->a(Landroid/app/Activity;LK;)V

    iget-object v0, p0, Ln;->b:Lq;

    iget-boolean v1, v0, Lq;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lq;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq;->e:Z

    :try_start_0
    iget-object v1, v0, Lq;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    iget-object v3, v0, Lq;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lr;

    invoke-direct {v4, v0}, Lr;-><init>(Lq;)V

    const-wide/16 v6, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    goto :goto_0
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Ln;->a:LG;

    sget-object v1, LK;->d:LK;

    invoke-virtual {v0, p1, v1}, LG;->a(Landroid/app/Activity;LK;)V

    return-void
.end method
