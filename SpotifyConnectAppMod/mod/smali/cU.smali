.class final LcU;
.super LcQ;


# instance fields
.field private final a:LeK;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/pm/PackageInfo;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/Future;

.field private final k:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V
    .locals 1

    invoke-direct {p0}, LcQ;-><init>()V

    new-instance v0, Lez;

    invoke-direct {v0}, Lez;-><init>()V

    iput-object v0, p0, LcU;->a:LeK;

    iput-object p1, p0, LcU;->j:Ljava/util/concurrent/Future;

    iput-object p2, p0, LcU;->k:Ljava/util/Collection;

    return-void
.end method

.method private a(Lff;Ljava/util/Collection;)LeV;
    .locals 12

    iget-object v0, p0, LcQ;->p:Landroid/content/Context;

    new-instance v1, Ldi;

    invoke-direct {v1}, Ldi;-><init>()V

    invoke-static {v0}, Ldi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ldk;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ldk;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, LcU;->g:Ljava/lang/String;

    invoke-static {v0}, Ldq;->a(Ljava/lang/String;)Ldq;

    move-result-object v0

    iget v7, v0, Ldq;->e:I

    iget-object v0, p0, LcQ;->r:Ldw;

    iget-object v2, v0, Ldw;->d:Ljava/lang/String;

    new-instance v0, LeV;

    iget-object v3, p0, LcU;->f:Ljava/lang/String;

    iget-object v4, p0, LcU;->e:Ljava/lang/String;

    iget-object v6, p0, LcU;->h:Ljava/lang/String;

    iget-object v8, p0, LcU;->i:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, LeV;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lff;Ljava/util/Collection;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .locals 6

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

    invoke-virtual {v0}, LcQ;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, LcQ;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LcS;

    invoke-virtual {v0}, LcQ;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LcQ;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, "binary"

    invoke-direct {v3, v4, v0, v5}, LcS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private c()Ljava/lang/Boolean;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, LcQ;->p:Landroid/content/Context;

    invoke-static {v0}, Ldk;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, LcU;->f()Lfn;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v0, p0, LcU;->j:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, LcU;->j:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    iget-object v4, p0, LcU;->k:Ljava/util/Collection;

    invoke-static {v0, v4}, LcU;->a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v3, Lfn;->a:LeW;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v0, 0x1

    const-string v5, "new"

    iget-object v6, v3, LeW;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, p0, LcQ;->p:Landroid/content/Context;

    invoke-static {v0, v2}, Lff;->a(Landroid/content/Context;Ljava/lang/String;)Lff;

    move-result-object v0

    invoke-direct {p0, v0, v4}, LcU;->a(Lff;Ljava/util/Collection;)LeV;

    move-result-object v0

    new-instance v2, LeZ;

    invoke-direct {p0}, LcU;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, LeW;->c:Ljava/lang/String;

    iget-object v5, p0, LcU;->a:LeK;

    invoke-direct {v2, p0, v4, v3, v5}, LeZ;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;)V

    invoke-virtual {v2, v0}, LeZ;->a(LeV;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_1
    move v1, v0

    :cond_1
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Error performing auto configuration."

    invoke-interface {v2, v3, v4, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Failed to create app with Crashlytics service."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v5, "configured"

    iget-object v6, v3, LeW;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->c()Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-boolean v5, v3, LeW;->e:Z

    if-eqz v5, :cond_0

    invoke-static {}, LcG;->a()LcT;

    iget-object v5, p0, LcQ;->p:Landroid/content/Context;

    invoke-static {v5, v2}, Lff;->a(Landroid/content/Context;Ljava/lang/String;)Lff;

    move-result-object v2

    invoke-direct {p0, v2, v4}, LcU;->a(Lff;Ljava/util/Collection;)LeV;

    move-result-object v2

    new-instance v4, Lfs;

    invoke-direct {p0}, LcU;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, LeW;->c:Ljava/lang/String;

    iget-object v6, p0, LcU;->a:LeK;

    invoke-direct {v4, p0, v5, v3, v6}, Lfs;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;)V

    invoke-virtual {v4, v2}, Lfs;->a(LeV;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private f()Lfn;
    .locals 7

    :try_start_0
    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    iget-object v2, p0, LcU;->r:Ldw;

    iget-object v3, p0, LcU;->a:LeK;

    iget-object v4, p0, LcU;->e:Ljava/lang/String;

    iget-object v5, p0, LcU;->f:Ljava/lang/String;

    invoke-direct {p0}, LcU;->g()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lfi;->a(LcQ;Ldw;LeK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->b()Z

    invoke-static {}, Lfj;->a()Lfi;

    move-result-object v0

    invoke-virtual {v0}, Lfi;->a()Lfn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LcQ;->p:Landroid/content/Context;

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Ldk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.10.97"

    return-object v0
.end method

.method protected final a_()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LcQ;->r:Ldw;

    invoke-virtual {v1}, Ldw;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LcU;->g:Ljava/lang/String;

    iget-object v1, p0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, LcU;->b:Landroid/content/pm/PackageManager;

    iget-object v1, p0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LcU;->c:Ljava/lang/String;

    iget-object v1, p0, LcU;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p0, LcU;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, LcU;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, LcU;->d:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LcU;->e:Ljava/lang/String;

    iget-object v1, p0, LcU;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    :goto_0
    iput-object v1, p0, LcU;->f:Ljava/lang/String;

    iget-object v1, p0, LcU;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LcU;->h:Ljava/lang/String;

    iget-object v1, p0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LcU;->i:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, LcU;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method protected final synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, LcU;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
