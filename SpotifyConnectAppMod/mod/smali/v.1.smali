.class final Lv;
.super Ljava/lang/Object;

# interfaces
.implements LH;


# instance fields
.field final a:LL;

.field b:Leu;

.field c:Ldi;

.field d:Lw;

.field e:Z

.field f:Z

.field volatile g:I

.field private final h:LcQ;

.field private final i:LeK;

.field private final j:Landroid/content/Context;

.field private final k:LE;

.field private final l:Ljava/util/concurrent/ScheduledExecutorService;

.field private final m:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(LcQ;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;LE;LeK;LL;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lv;->m:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ldi;

    invoke-direct {v0}, Ldi;-><init>()V

    iput-object v0, p0, Lv;->c:Ldi;

    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Lv;->d:Lw;

    iput-boolean v1, p0, Lv;->e:Z

    iput-boolean v1, p0, Lv;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lv;->g:I

    iput-object p1, p0, Lv;->h:LcQ;

    iput-object p2, p0, Lv;->j:Landroid/content/Context;

    iput-object p3, p0, Lv;->l:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lv;->k:LE;

    iput-object p5, p0, Lv;->i:LeK;

    iput-object p6, p0, Lv;->a:LL;

    return-void
.end method

.method private a(JJ)V
    .locals 9

    iget-object v0, p0, Lv;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Lex;

    iget-object v0, p0, Lv;->j:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lex;-><init>(Landroid/content/Context;Let;)V

    iget-object v0, p0, Lv;->j:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling time based file roll over every "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ldk;->e(Landroid/content/Context;)V

    :try_start_0
    iget-object v7, p0, Lv;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lv;->l:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lv;->j:Landroid/content/Context;

    const-string v1, "Failed to schedule time based file roll over"

    invoke-static {v0, v1}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lv;->b:Leu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lv;->j:Landroid/content/Context;

    invoke-static {v0}, Ldk;->e(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lv;->j:Landroid/content/Context;

    invoke-static {v0}, Ldk;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lv;->k:LE;

    invoke-virtual {v0}, LE;->e()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lv;->j:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "attempt to send batch of %d files"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Ldk;->e(Landroid/content/Context;)V

    iget-object v1, p0, Lv;->b:Leu;

    invoke-interface {v1, v2}, Leu;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v0

    :try_start_1
    iget-object v0, p0, Lv;->k:LE;

    invoke-virtual {v0, v2}, LE;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    iget-object v1, p0, Lv;->k:LE;

    invoke-virtual {v1}, LE;->e()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_2
    iget-object v2, p0, Lv;->j:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to send batch of analytics files to server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    if-nez v0, :cond_0

    iget-object v0, p0, Lv;->k:LE;

    invoke-virtual {v0}, LE;->g()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final a(LJ;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v1, p0, Lv;->a:LL;

    new-instance v0, LI;

    iget-wide v2, p1, LJ;->b:J

    iget-object v4, p1, LJ;->a:LK;

    iget-object v5, p1, LJ;->c:Ljava/util/Map;

    iget-object v6, p1, LJ;->d:Ljava/lang/String;

    iget-object v7, p1, LJ;->e:Ljava/util/Map;

    iget-object v8, p1, LJ;->f:Ljava/lang/String;

    iget-object v9, p1, LJ;->g:Ljava/util/Map;

    invoke-direct/range {v0 .. v10}, LI;-><init>(LL;JLK;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;B)V

    iget-boolean v1, p0, Lv;->e:Z

    if-nez v1, :cond_1

    sget-object v1, LK;->g:LK;

    iget-object v2, v0, LI;->c:LK;

    invoke-virtual {v1, v2}, LK;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Custom events tracking disabled - skipping event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lv;->f:Z

    if-nez v1, :cond_2

    sget-object v1, LK;->h:LK;

    iget-object v2, v0, LI;->c:LK;

    invoke-virtual {v1, v2}, LK;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Predefined events tracking disabled - skipping event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lv;->d:Lw;

    invoke-interface {v1, v0}, Lw;->a(LI;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping filtered event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lv;->k:LE;

    invoke-virtual {v1, v0}, LE;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lv;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v10, 0x1

    :cond_4
    if-eqz v10, :cond_0

    iget v0, p0, Lv;->g:I

    int-to-long v0, v0

    iget v2, p0, Lv;->g:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lv;->a(JJ)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Answers"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to write event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(LeT;Ljava/lang/String;)V
    .locals 6

    new-instance v0, LF;

    iget-object v1, p0, Lv;->h:LcQ;

    iget-object v3, p1, LeT;->a:Ljava/lang/String;

    iget-object v4, p0, Lv;->i:LeK;

    iget-object v2, p0, Lv;->j:Landroid/content/Context;

    invoke-static {v2}, Ldi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LF;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;Ljava/lang/String;)V

    new-instance v1, LA;

    new-instance v2, Lek;

    invoke-direct {v2}, Lek;-><init>()V

    invoke-direct {v1, v2}, LA;-><init>(Lei;)V

    new-instance v2, Lej;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lej;-><init>(I)V

    new-instance v3, Lem;

    invoke-direct {v3, v1, v2}, Lem;-><init>(Lei;Lel;)V

    new-instance v1, LB;

    invoke-direct {v1, v3}, LB;-><init>(Lem;)V

    new-instance v2, Lp;

    invoke-direct {v2, v0, v1}, Lp;-><init>(LF;LB;)V

    iput-object v2, p0, Lv;->b:Leu;

    iget-object v0, p0, Lv;->k:LE;

    iput-object p1, v0, LE;->a:LeT;

    iget-boolean v0, p1, LeT;->f:Z

    iput-boolean v0, p0, Lv;->e:Z

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Custom event tracking "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lv;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, LeT;->g:Z

    iput-boolean v0, p0, Lv;->f:Z

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Predefined event tracking "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lv;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, LeT;->i:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, LC;

    iget v1, p1, LeT;->i:I

    invoke-direct {v0, v1}, LC;-><init>(I)V

    iput-object v0, p0, Lv;->d:Lw;

    :cond_0
    iget v0, p1, LeT;->b:I

    iput v0, p0, Lv;->g:I

    const-wide/16 v0, 0x0

    iget v2, p0, Lv;->g:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lv;->a(JJ)V

    return-void

    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    :cond_2
    const-string v0, "disabled"

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lv;->k:LE;

    invoke-virtual {v0}, LE;->f()V

    return-void
.end method

.method public final c()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lv;->k:LE;

    invoke-virtual {v0}, LE;->d()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lv;->j:Landroid/content/Context;

    const-string v1, "Failed to roll file over."

    invoke-static {v0, v1}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lv;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv;->j:Landroid/content/Context;

    invoke-static {v0}, Ldk;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lv;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lv;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
