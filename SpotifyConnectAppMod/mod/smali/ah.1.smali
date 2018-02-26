.class public Lah;
.super LcQ;


# annotations
.annotation runtime LdV;
    a = {
        LbI;
    }
.end annotation


# instance fields
.field private A:LeK;

.field private B:Lav;

.field final a:Ljava/util/concurrent/ConcurrentHashMap;

.field b:Lay;

.field public c:LaD;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field public l:Z

.field public m:LbI;

.field private final s:J

.field private t:Ljava/io/File;

.field private u:LeO;

.field private v:Lay;

.field private w:LaA;

.field private x:Ljava/lang/String;

.field private y:F

.field private final z:Lbv;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lah;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lds;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lds;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {p0, v1}, Lah;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, LcQ;-><init>()V

    iput-object v1, p0, Lah;->d:Ljava/lang/String;

    iput-object v1, p0, Lah;->e:Ljava/lang/String;

    iput-object v1, p0, Lah;->f:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lah;->y:F

    new-instance v0, Lat;

    invoke-direct {v0, v2}, Lat;-><init>(B)V

    iput-object v0, p0, Lah;->w:LaA;

    iput-object v1, p0, Lah;->z:Lbv;

    iput-boolean v2, p0, Lah;->l:Z

    new-instance v0, Lav;

    invoke-direct {v0, p1}, Lav;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lah;->B:Lav;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lah;->s:J

    return-void
.end method

.method static synthetic a(FI)I
    .locals 1

    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lah;)Lay;
    .locals 1

    iget-object v0, p0, Lah;->v:Lay;

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lb;

    invoke-static {v0}, LcG;->a(Ljava/lang/Class;)LcQ;

    move-result-object v0

    check-cast v0, Lb;

    if-eqz v0, :cond_1

    new-instance v1, Ldo;

    invoke-direct {v1, p0}, Ldo;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lb;->a:LG;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lb;->a:LG;

    iget-object v1, v1, Ldn;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, LcG;->a()LcT;

    iget-object v0, v0, LG;->b:Lf;

    const-string v2, "sessionId"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, LJ;

    sget-object v3, LK;->e:LK;

    invoke-direct {v2, v3}, LJ;-><init>(LK;)V

    iput-object v1, v2, LJ;->c:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lf;->a(LJ;ZZ)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lah;Landroid/app/Activity;Lfg;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lah;->a(Landroid/app/Activity;Lfg;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/app/Activity;Lfg;)Z
    .locals 6

    new-instance v4, LaZ;

    invoke-direct {v4, p1, p2}, LaZ;-><init>(Landroid/content/Context;Lfg;)V

    new-instance v3, Lau;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lau;-><init>(B)V

    new-instance v0, Lao;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lao;-><init>(Lah;Landroid/app/Activity;Lau;LaZ;Lfg;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, LcG;->a()LcT;

    :try_start_0
    iget-object v0, v3, Lau;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, v3, Lau;->a:Z

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lah;->l:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ldi;

    invoke-direct {v0}, Ldi;-><init>()V

    invoke-static {p1}, Ldi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah;->h:Ljava/lang/String;

    iget-object v0, p0, Lah;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Initializing Crashlytics 2.3.8.97"

    invoke-interface {v0, v1, v2}, LcT;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LeP;

    invoke-direct {v0, p0}, LeP;-><init>(LcQ;)V

    iput-object v0, p0, Lah;->u:LeO;

    new-instance v0, Lay;

    const-string v1, "crash_marker"

    iget-object v2, p0, Lah;->u:LeO;

    invoke-direct {v0, v1, v2}, Lay;-><init>(Ljava/lang/String;LeO;)V

    iput-object v0, p0, Lah;->b:Lay;

    new-instance v0, Lay;

    const-string v1, "initialization_marker"

    iget-object v2, p0, Lah;->u:LeO;

    invoke-direct {v0, v1, v2}, Lay;-><init>(Ljava/lang/String;LeO;)V

    iput-object v0, p0, Lah;->v:Lay;

    :try_start_0
    iget-object v0, p0, Lah;->z:Lbv;

    if-eqz v0, :cond_2

    new-instance v0, LaC;

    iget-object v1, p0, Lah;->z:Lbv;

    invoke-direct {v0, v1}, LaC;-><init>(Lbv;)V

    :goto_1
    new-instance v1, Lez;

    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    invoke-direct {v1, v2}, Lez;-><init>(LcT;)V

    iput-object v1, p0, Lah;->A:LeK;

    iget-object v1, p0, Lah;->A:LeK;

    invoke-interface {v1, v0}, LeK;->a(LeL;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah;->x:Ljava/lang/String;

    iget-object v0, p0, LcQ;->r:Ldw;

    invoke-virtual {v0}, Ldw;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah;->i:Ljava/lang/String;

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installer package name is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lah;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lah;->x:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lah;->j:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v0, "0.0"

    :goto_2
    iput-object v0, p0, Lah;->k:Ljava/lang/String;

    invoke-static {p1}, Ldk;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lah;->g:Ljava/lang/String;

    iget-object v0, p0, Lah;->g:Ljava/lang/String;

    const-string v1, "com.crashlytics.RequireBuildId"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Laa;

    invoke-direct {v2, v0, v1}, Laa;-><init>(Ljava/lang/String;Z)V

    iget-object v0, v2, Laa;->a:Ljava/lang/String;

    invoke-static {v0}, Ldk;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v2, Laa;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  | "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".   \\ |  | /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".    \\    /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     \\  /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".      \\/"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".      /\\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     /  \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".    /    \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".   / |  | \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, LaB;

    invoke-direct {v1, v0}, LaB;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch LaB; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Leh;

    invoke-direct {v1, v0}, Leh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    iget-boolean v0, v2, Laa;->b:Z

    if-nez v0, :cond_5

    invoke-static {}, LcG;->a()LcT;

    :cond_5
    new-instance v4, Lbe;

    iget-object v0, p0, Lah;->x:Ljava/lang/String;

    invoke-direct {v4, p1, v0}, Lbe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lah;->B:Lav;

    new-instance v1, Lal;

    invoke-direct {v1, p0}, Lal;-><init>(Lah;)V

    invoke-virtual {v0, v1}, Lav;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v0, p0, Lah;->B:Lav;

    new-instance v1, Las;

    iget-object v2, p0, Lah;->b:Lay;

    invoke-direct {v1, v2}, Las;-><init>(Lay;)V

    invoke-virtual {v0, v1}, Lav;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch LaB; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    new-instance v0, LaD;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lah;->B:Lav;

    iget-object v3, p0, LcQ;->r:Ldw;

    iget-object v5, p0, Lah;->u:LeO;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, LaD;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lav;Ldw;LbE;LeO;Lah;)V

    iput-object v0, p0, Lah;->c:LaD;

    iget-object v0, p0, Lah;->c:LaD;

    iget-object v1, v0, LaD;->f:Lav;

    new-instance v2, LaF;

    invoke-direct {v2, v0}, LaF;-><init>(LaD;)V

    invoke-virtual {v1, v2}, Lav;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lah;->c:LaD;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, LcG;->a()LcT;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch LaB; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    if-eqz v9, :cond_6

    :try_start_3
    invoke-static {p1}, Ldk;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lah;->l()V

    move v0, v7

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "There was a problem installing the exception handler."

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch LaB; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    goto/16 :goto_0

    :cond_6
    move v0, v8

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x400

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static f()Lah;
    .locals 1

    const-class v0, Lah;

    invoke-static {v0}, LcG;->a(Ljava/lang/Class;)LcQ;

    move-result-object v0

    check-cast v0, Lah;

    return-object v0
.end method

.method static i()Lfh;
    .locals 1

    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->a()Lfn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lfn;->b:Lfh;

    goto :goto_0
.end method

.method private l()V
    .locals 4

    new-instance v1, Lai;

    invoke-direct {v1, p0}, Lai;-><init>(Lah;)V

    iget-object v0, p0, LcQ;->o:LcP;

    invoke-virtual {v0}, LcP;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg;

    invoke-virtual {v1, v0}, Lea;->a(Leg;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LcQ;->n:LcG;

    iget-object v0, v0, LcG;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {}, LcG;->a()LcT;

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lah;->B:Lav;

    new-instance v1, Lak;

    invoke-direct {v1, p0}, Lak;-><init>(Lah;)V

    invoke-virtual {v0, v1}, Lav;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method final a(Lfn;)LaU;
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, LaV;

    iget-object v1, p0, LcQ;->p:Landroid/content/Context;

    const-string v2, "com.crashlytics.ApiEndpoint"

    invoke-static {v1, v2}, Ldk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lfn;->a:LeW;

    iget-object v2, v2, LeW;->d:Ljava/lang/String;

    iget-object v3, p0, Lah;->A:LeK;

    invoke-direct {v0, p0, v1, v2, v3}, LaV;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.3.8.97"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lah;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LcG;->a()LcT;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, ""

    :goto_1
    iget-object v2, p0, Lah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lah;->c:LaD;

    iget-object v1, p0, Lah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, LaD;->f:Lav;

    new-instance v3, LaO;

    invoke-direct {v3, v0, v1}, LaO;-><init>(LaD;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lav;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a_()Z
    .locals 1

    iget-object v0, p0, LcQ;->p:Landroid/content/Context;

    invoke-direct {p0, v0}, Lah;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method protected final c()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lah;->B:Lav;

    new-instance v1, Laj;

    invoke-direct {v1, p0}, Laj;-><init>(Lah;)V

    invoke-virtual {v0, v1}, Lav;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    iget-object v0, p0, Lah;->c:LaD;

    iget-object v1, v0, LaD;->f:Lav;

    new-instance v2, LaH;

    invoke-direct {v2, v0}, LaH;-><init>(LaD;)V

    invoke-virtual {v1, v2}, Lav;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :try_start_0
    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->a()Lfn;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Received null settings, skipping initialization!"

    invoke-interface {v0, v1, v2}, LcT;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lah;->m()V

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    iget-object v0, v1, Lfn;->d:Lfe;

    iget-boolean v0, v0, Lfe;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, LcG;->a()LcT;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lah;->m()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lah;->c:LaD;

    iget-object v2, v0, LaD;->f:Lav;

    new-instance v3, LaG;

    invoke-direct {v3, v0}, LaG;-><init>(LaD;)V

    invoke-virtual {v2, v3}, Lav;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p0, v1}, Lah;->a(Lfn;)LaU;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to create a call to upload reports."

    invoke-interface {v0, v1, v2}, LcT;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lah;->m()V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v1, Lbz;

    invoke-direct {v1, v0}, Lbz;-><init>(LaU;)V

    iget v0, p0, Lah;->y:F

    invoke-virtual {v1, v0}, Lbz;->a(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lah;->m()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lah;->m()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lah;->m()V

    throw v0
.end method

.method protected final synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lah;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method final g()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lah;->t:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, LeP;

    invoke-direct {v0, p0}, LeP;-><init>(LcQ;)V

    invoke-virtual {v0}, LeP;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lah;->t:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lah;->t:Ljava/io/File;

    return-object v0
.end method

.method final h()Z
    .locals 3

    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    new-instance v1, Lam;

    invoke-direct {v1, p0}, Lam;-><init>(Lah;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfi;->a(Lfk;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
