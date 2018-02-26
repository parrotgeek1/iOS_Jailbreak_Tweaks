.class final Lj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lf;


# direct methods
.method constructor <init>(Lf;)V
    .locals 0

    iput-object p1, p0, Lj;->a:Lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lj;->a:Lf;

    iget-object v12, v0, Lf;->d:LN;

    iget-object v0, v12, LN;->b:Ldw;

    invoke-virtual {v0}, Ldw;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, v12, LN;->b:Ldw;

    iget-object v1, v1, Ldw;->d:Ljava/lang/String;

    iget-object v2, v12, LN;->b:Ldw;

    invoke-virtual {v2}, Ldw;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Ldx;->d:Ldx;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v2, Ldx;->g:Ldx;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v2, v12, LN;->b:Ldw;

    const/4 v6, 0x0

    iget-boolean v7, v2, Ldw;->a:Z

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ldw;->e()Lda;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lda;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :cond_0
    sget-object v2, Ldx;->c:Ldx;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v0, v12, LN;->a:Landroid/content/Context;

    invoke-static {v0}, Ldk;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Ldw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v2}, Ldw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ldw;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, LL;

    iget-object v11, v12, LN;->c:Ljava/lang/String;

    iget-object v12, v12, LN;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, LL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lj;->a:Lf;

    iget-object v1, v1, Lf;->c:Lm;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AnswersFilesManagerProvider cannot be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to enable events"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v2, LM;

    invoke-direct {v2}, LM;-><init>()V

    new-instance v3, LdG;

    invoke-direct {v3}, LdG;-><init>()V

    iget-object v4, v1, Lm;->b:LeO;

    invoke-interface {v4}, LeO;->a()Ljava/io/File;

    move-result-object v4

    new-instance v6, Lev;

    iget-object v5, v1, Lm;->a:Landroid/content/Context;

    const-string v7, "session_analytics.tap"

    const-string v8, "session_analytics_to_send"

    invoke-direct {v6, v5, v4, v7, v8}, Lev;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, LE;

    iget-object v1, v1, Lm;->a:Landroid/content/Context;

    invoke-direct {v5, v1, v2, v3, v6}, LE;-><init>(Landroid/content/Context;LM;Ldp;Ler;)V

    iget-object v1, p0, Lj;->a:Lf;

    invoke-virtual {v5, v1}, LE;->a(Les;)V

    iget-object v8, p0, Lj;->a:Lf;

    new-instance v1, Lv;

    iget-object v2, p0, Lj;->a:Lf;

    iget-object v2, v2, Lf;->a:LcQ;

    iget-object v3, p0, Lj;->a:Lf;

    iget-object v3, v3, Lf;->b:Landroid/content/Context;

    iget-object v4, p0, Lj;->a:Lf;

    iget-object v4, v4, Lf;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lj;->a:Lf;

    iget-object v6, v6, Lf;->e:LeK;

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lv;-><init>(LcQ;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;LE;LeK;LL;)V

    iput-object v1, v8, Lf;->g:LH;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
