.class public Lb;
.super LcQ;


# instance fields
.field public a:LG;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LcQ;-><init>()V

    return-void
.end method

.method public static c()Lb;
    .locals 1

    const-class v0, Lb;

    invoke-static {v0}, LcG;->a(Ljava/lang/Class;)LcQ;

    move-result-object v0

    check-cast v0, Lb;

    return-object v0
.end method

.method private f()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->a()Lfn;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to retrieve settings"

    invoke-interface {v0, v1, v2}, LcT;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lfn;->d:Lfe;

    iget-boolean v1, v1, Lfe;->d:Z

    if-eqz v1, :cond_1

    invoke-static {}, LcG;->a()LcT;

    iget-object v1, p0, Lb;->a:LG;

    iget-object v0, v0, Lfn;->e:LeT;

    iget-object v2, p0, LcQ;->p:Landroid/content/Context;

    const-string v3, "com.crashlytics.ApiEndpoint"

    invoke-static {v2, v3}, Ldk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, LG;->d:Lq;

    iget-boolean v4, v0, LeT;->h:Z

    iput-boolean v4, v3, Lq;->c:Z

    iget-object v1, v1, LG;->b:Lf;

    new-instance v3, Lg;

    invoke-direct {v3, v1, v0, v2}, Lg;-><init>(Lf;LeT;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lf;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, LcG;->a()LcT;

    iget-object v1, p0, Lb;->a:LG;

    iget-object v0, v1, LG;->c:LcB;

    iget-object v2, v0, LcB;->a:LcC;

    if-eqz v2, :cond_2

    iget-object v2, v0, LcB;->a:LcC;

    iget-object v0, v2, LcC;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object v4, v2, LcC;->b:Landroid/app/Application;

    invoke-virtual {v4, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, v1, LG;->b:Lf;

    new-instance v1, Lh;

    invoke-direct {v1, v0}, Lh;-><init>(Lf;)V

    invoke-virtual {v0, v1}, Lf;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.6.97"

    return-object v0
.end method

.method public final a(Lt;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb;->a:LG;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb;->a:LG;

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logged custom event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, LG;->b:Lf;

    new-instance v1, LJ;

    sget-object v2, LK;->g:LK;

    invoke-direct {v1, v2}, LJ;-><init>(LK;)V

    iget-object v2, p1, Lt;->c:Ljava/lang/String;

    iput-object v2, v1, LJ;->d:Ljava/lang/String;

    iget-object v2, p1, Ld;->b:Lc;

    iget-object v2, v2, Lc;->b:Ljava/util/Map;

    iput-object v2, v1, LJ;->e:Ljava/util/Map;

    invoke-virtual {v0, v1, v3, v3}, Lf;->a(LJ;ZZ)V

    :cond_1
    return-void
.end method

.method protected final a_()Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    iget-object v2, p0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "0.0"

    move-object v3, v0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v0, v7, :cond_2

    iget-wide v0, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide v10, v0

    :goto_1
    iget-object v0, p0, LcQ;->r:Ldw;

    new-instance v4, LN;

    invoke-direct {v4, v2, v0, v6, v3}, LN;-><init>(Landroid/content/Context;Ldw;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lm;

    new-instance v0, LeP;

    invoke-direct {v0, p0}, LeP;-><init>(LcQ;)V

    invoke-direct {v3, v2, v0}, Lm;-><init>(Landroid/content/Context;LeO;)V

    new-instance v5, Lez;

    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    invoke-direct {v5, v0}, Lez;-><init>(LcT;)V

    new-instance v7, LcB;

    invoke-direct {v7, v2}, LcB;-><init>(Landroid/content/Context;)V

    const-string v0, "Answers Events Handler"

    invoke-static {v0}, Lds;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-static {v0, v6}, Lds;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    new-instance v12, Lq;

    invoke-direct {v12, v6}, Lq;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance v0, Lf;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lf;-><init>(LcQ;Landroid/content/Context;Lm;LN;LeK;Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance v1, LeR;

    const-string v3, "settings"

    invoke-direct {v1, v2, v3}, LeR;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Lo;

    invoke-direct {v5, v1}, Lo;-><init>(LeQ;)V

    new-instance v1, LG;

    move-object v2, v0

    move-object v3, v7

    move-object v4, v12

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, LG;-><init>(Lf;LcB;Lq;Lo;J)V

    iput-object v1, p0, Lb;->a:LG;

    iget-object v1, p0, Lb;->a:LG;

    iget-object v0, v1, LG;->b:Lf;

    new-instance v2, Lj;

    invoke-direct {v2, v0}, Lj;-><init>(Lf;)V

    invoke-virtual {v0, v2}, Lf;->a(Ljava/lang/Runnable;)V

    iget-object v0, v1, LG;->c:LcB;

    new-instance v2, Ln;

    iget-object v3, v1, LG;->d:Lq;

    invoke-direct {v2, v1, v3}, Ln;-><init>(LG;Lq;)V

    invoke-virtual {v0, v2}, LcB;->a(LcE;)Z

    iget-object v0, v1, LG;->d:Lq;

    iget-object v0, v0, Lq;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, v1, LG;->a:J

    iget-object v0, v1, LG;->e:Lo;

    iget-object v0, v0, Lo;->a:LeQ;

    invoke-interface {v0}, LeQ;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "analytics_launched"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    move v0, v8

    :goto_2
    if-eqz v0, :cond_4

    move v0, v8

    :goto_3
    if-eqz v0, :cond_0

    invoke-static {}, LcG;->a()LcT;

    iget-object v0, v1, LG;->b:Lf;

    new-instance v2, LJ;

    sget-object v3, LK;->f:LK;

    invoke-direct {v2, v3}, LJ;-><init>(LK;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lf;->a(LJ;ZZ)V

    iget-object v0, v1, LG;->e:Lo;

    iget-object v1, v0, Lo;->a:LeQ;

    iget-object v0, v0, Lo;->a:LeQ;

    invoke-interface {v0}, LeQ;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1, v0}, LeQ;->a(Landroid/content/SharedPreferences$Editor;)Z

    :cond_0
    move v0, v8

    :goto_4
    return v0

    :cond_1
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v3, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v10, v0

    goto/16 :goto_1

    :cond_3
    move v0, v9

    goto :goto_2

    :cond_4
    move v0, v9

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Error retrieving app properties"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v9

    goto :goto_4
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method protected final synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lb;->f()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
