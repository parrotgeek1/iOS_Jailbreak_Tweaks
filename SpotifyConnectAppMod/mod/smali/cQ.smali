.class public abstract LcQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public n:LcG;

.field public o:LcP;

.field public p:Landroid/content/Context;

.field q:LcM;

.field public r:Ldw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LcP;

    invoke-direct {v0, p0}, LcP;-><init>(LcQ;)V

    iput-object v0, p0, LcQ;->o:LcP;

    return-void
.end method

.method private a(LcQ;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, LdV;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LdV;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LdV;->a()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private c()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LdV;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LdV;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method final a(Landroid/content/Context;LcG;LcM;Ldw;)V
    .locals 3

    iput-object p2, p0, LcQ;->n:LcG;

    new-instance v0, LcK;

    invoke-virtual {p0}, LcQ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LcQ;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, LcK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LcQ;->p:Landroid/content/Context;

    iput-object p3, p0, LcQ;->q:LcM;

    iput-object p4, p0, LcQ;->r:Ldw;

    return-void
.end method

.method public a_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    check-cast p1, LcQ;

    invoke-direct {p0, p1}, LcQ;->a(LcQ;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p1, p0}, LcQ;->a(LcQ;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, LcQ;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, LcQ;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    invoke-direct {p0}, LcQ;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p1}, LcQ;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract e()Ljava/lang/Object;
.end method

.method final j()V
    .locals 5

    iget-object v0, p0, LcQ;->o:LcP;

    iget-object v1, p0, LcQ;->n:LcG;

    iget-object v1, v1, LcG;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    new-instance v3, LdY;

    invoke-direct {v3, v1, v0}, LdY;-><init>(Ljava/util/concurrent/Executor;LdX;)V

    iget v1, v0, LdI;->f:I

    sget v4, LdR;->a:I

    if-eq v1, v4, :cond_0

    sget-object v1, LdM;->a:[I

    iget v4, v0, LdI;->f:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    :cond_0
    sget v1, LdR;->b:I

    iput v1, v0, LdI;->f:I

    invoke-virtual {v0}, LdI;->b()V

    iget-object v1, v0, LdI;->d:LdS;

    iput-object v2, v1, LdS;->b:[Ljava/lang/Object;

    iget-object v0, v0, LdI;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".Fabric"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LcQ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
