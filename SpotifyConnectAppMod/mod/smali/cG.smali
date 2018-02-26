.class public LcG;
.super Ljava/lang/Object;


# static fields
.field static volatile a:LcG;

.field static final b:LcT;


# instance fields
.field public final c:Ljava/util/concurrent/ExecutorService;

.field public d:LcB;

.field public e:Ljava/lang/ref/WeakReference;

.field final f:LcT;

.field final g:Z

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Map;

.field private final j:Landroid/os/Handler;

.field private final k:LcM;

.field private final l:LcM;

.field private final m:Ldw;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LcF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LcF;-><init>(B)V

    sput-object v0, LcG;->b:LcT;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lee;Landroid/os/Handler;LcT;ZLcM;Ldw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LcG;->h:Landroid/content/Context;

    iput-object p2, p0, LcG;->i:Ljava/util/Map;

    iput-object p3, p0, LcG;->c:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, LcG;->j:Landroid/os/Handler;

    iput-object p5, p0, LcG;->f:LcT;

    iput-boolean p6, p0, LcG;->g:Z

    iput-object p7, p0, LcG;->k:LcM;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LcG;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, LcI;

    invoke-direct {v1, p0, v0}, LcI;-><init>(LcG;I)V

    iput-object v1, p0, LcG;->l:LcM;

    iput-object p8, p0, LcG;->m:Ldw;

    return-void
.end method

.method public static varargs a(Landroid/content/Context;[LcQ;)LcG;
    .locals 10

    sget-object v0, LcG;->a:LcG;

    if-nez v0, :cond_7

    const-class v9, LcG;

    monitor-enter v9

    :try_start_0
    sget-object v0, LcG;->a:LcG;

    if-nez v0, :cond_6

    new-instance v7, LcJ;

    invoke-direct {v7, p0}, LcJ;-><init>(Landroid/content/Context;)V

    iget-object v0, v7, LcJ;->b:[LcQ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, v7, LcJ;->b:[LcQ;

    iget-object v0, v7, LcJ;->c:Lee;

    if-nez v0, :cond_1

    invoke-static {}, Lee;->a()Lee;

    move-result-object v0

    iput-object v0, v7, LcJ;->c:Lee;

    :cond_1
    iget-object v0, v7, LcJ;->d:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v7, LcJ;->d:Landroid/os/Handler;

    :cond_2
    iget-object v0, v7, LcJ;->e:LcT;

    if-nez v0, :cond_3

    iget-boolean v0, v7, LcJ;->f:Z

    if-eqz v0, :cond_8

    new-instance v0, LcF;

    invoke-direct {v0}, LcF;-><init>()V

    iput-object v0, v7, LcJ;->e:LcT;

    :cond_3
    :goto_0
    iget-object v0, v7, LcJ;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, v7, LcJ;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, LcJ;->h:Ljava/lang/String;

    :cond_4
    iget-object v0, v7, LcJ;->i:LcM;

    if-nez v0, :cond_5

    sget-object v0, LcM;->d:LcM;

    iput-object v0, v7, LcJ;->i:LcM;

    :cond_5
    iget-object v0, v7, LcJ;->b:[LcQ;

    if-nez v0, :cond_9

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_1
    new-instance v8, Ldw;

    iget-object v0, v7, LcJ;->a:Landroid/content/Context;

    iget-object v1, v7, LcJ;->h:Ljava/lang/String;

    iget-object v3, v7, LcJ;->g:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v0, v1, v3, v4}, Ldw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance v0, LcG;

    iget-object v1, v7, LcJ;->a:Landroid/content/Context;

    iget-object v3, v7, LcJ;->c:Lee;

    iget-object v4, v7, LcJ;->d:Landroid/os/Handler;

    iget-object v5, v7, LcJ;->e:LcT;

    iget-boolean v6, v7, LcJ;->f:Z

    iget-object v7, v7, LcJ;->i:LcM;

    invoke-direct/range {v0 .. v8}, LcG;-><init>(Landroid/content/Context;Ljava/util/Map;Lee;Landroid/os/Handler;LcT;ZLcM;Ldw;)V

    sput-object v0, LcG;->a:LcG;

    iget-object v1, v0, LcG;->h:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_a

    check-cast v1, Landroid/app/Activity;

    :goto_2
    invoke-virtual {v0, v1}, LcG;->a(Landroid/app/Activity;)LcG;

    new-instance v1, LcB;

    iget-object v2, v0, LcG;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, LcB;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, LcG;->d:LcB;

    iget-object v1, v0, LcG;->d:LcB;

    new-instance v2, LcH;

    invoke-direct {v2, v0}, LcH;-><init>(LcG;)V

    invoke-virtual {v1, v2}, LcB;->a(LcE;)Z

    iget-object v1, v0, LcG;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, LcG;->a(Landroid/content/Context;)V

    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    sget-object v0, LcG;->a:LcG;

    return-object v0

    :cond_8
    :try_start_2
    new-instance v0, LcF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LcF;-><init>(B)V

    iput-object v0, v7, LcJ;->e:LcT;

    goto :goto_0

    :cond_9
    iget-object v0, v7, LcJ;->b:[LcQ;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v2, v0}, LcG;->a(Ljava/util/Map;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static a(Ljava/lang/Class;)LcQ;
    .locals 2

    sget-object v0, LcG;->a:LcG;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, LcG;->a:LcG;

    iget-object v0, v0, LcG;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcQ;

    return-object v0
.end method

.method public static a()LcT;
    .locals 1

    sget-object v0, LcG;->a:LcG;

    if-nez v0, :cond_0

    sget-object v0, LcG;->b:LcT;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LcG;->a:LcG;

    iget-object v0, v0, LcG;->f:LcT;

    goto :goto_0
.end method

.method static synthetic a(LcG;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, LcG;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    new-instance v0, LcL;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LcL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LcG;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v1, p0, LcG;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, LcU;

    invoke-direct {v2, v0, v1}, LcU;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v0, LcM;->d:LcM;

    iget-object v1, p0, LcG;->m:Ldw;

    invoke-virtual {v2, p1, p0, v0, v1}, LcU;->a(Landroid/content/Context;LcG;LcM;Ldw;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcQ;

    iget-object v4, p0, LcG;->l:LcM;

    iget-object v5, p0, LcG;->m:Ldw;

    invoke-virtual {v0, p1, p0, v4, v5}, LcQ;->a(Landroid/content/Context;LcG;LcM;Ldw;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LcU;->j()V

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, LcT;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing io.fabric.sdk.android:fabric [Version: 1.3.10.97], with the following kits:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcQ;

    iget-object v4, v0, LcQ;->o:LcP;

    iget-object v5, v2, LcU;->o:LcP;

    invoke-virtual {v4, v5}, LcP;->a(Leg;)V

    iget-object v4, p0, LcG;->i:Ljava/util/Map;

    invoke-static {v4, v0}, LcG;->a(Ljava/util/Map;LcQ;)V

    invoke-virtual {v0}, LcQ;->j()V

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LcQ;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, LcQ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, LcG;->a()LcT;

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/Map;LcQ;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LdV;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LdV;

    if-eqz v0, :cond_4

    invoke-interface {v0}, LdV;->a()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcQ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, LcQ;->o:LcP;

    iget-object v0, v0, LcQ;->o:LcP;

    invoke-virtual {v6, v0}, LcP;->a(Leg;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcQ;

    if-nez v0, :cond_2

    new-instance v0, Leh;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Leh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v5, p1, LcQ;->o:LcP;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcQ;

    iget-object v0, v0, LcQ;->o:LcP;

    invoke-virtual {v5, v0}, LcP;->a(Leg;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcQ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v0, LcR;

    if-eqz v2, :cond_0

    check-cast v0, LcR;

    invoke-interface {v0}, LcR;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, LcG;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(LcG;)LcM;
    .locals 1

    iget-object v0, p0, LcG;->k:LcM;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, LcG;->a:LcG;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, LcG;->a:LcG;

    iget-boolean v0, v0, LcG;->g:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)LcG;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LcG;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
