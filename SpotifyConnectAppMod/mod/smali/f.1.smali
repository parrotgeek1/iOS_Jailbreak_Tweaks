.class public final Lf;
.super Ljava/lang/Object;

# interfaces
.implements Les;


# instance fields
.field final a:LcQ;

.field final b:Landroid/content/Context;

.field final c:Lm;

.field final d:LN;

.field final e:LeK;

.field final f:Ljava/util/concurrent/ScheduledExecutorService;

.field g:LH;


# direct methods
.method public constructor <init>(LcQ;Landroid/content/Context;Lm;LN;LeK;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu;

    invoke-direct {v0}, Lu;-><init>()V

    iput-object v0, p0, Lf;->g:LH;

    iput-object p1, p0, Lf;->a:LcQ;

    iput-object p2, p0, Lf;->b:Landroid/content/Context;

    iput-object p3, p0, Lf;->c:Lm;

    iput-object p4, p0, Lf;->d:LN;

    iput-object p5, p0, Lf;->e:LeK;

    iput-object p6, p0, Lf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Li;

    invoke-direct {v0, p0}, Li;-><init>(Lf;)V

    invoke-virtual {p0, v0}, Lf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(LJ;ZZ)V
    .locals 4

    new-instance v0, Ll;

    invoke-direct {v0, p0, p1, p3}, Ll;-><init>(Lf;LJ;Z)V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to run events task"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lf;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to submit events task"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
