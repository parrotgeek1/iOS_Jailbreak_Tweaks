.class final Ldb;
.super Ljava/lang/Object;


# instance fields
.field final a:LeQ;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldb;->b:Landroid/content/Context;

    new-instance v0, LeR;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, LeR;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ldb;->a:LeQ;

    return-void
.end method

.method static b(Lda;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lda;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lda;
    .locals 2

    new-instance v0, Ldd;

    iget-object v1, p0, Ldb;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldd;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Ldh;->a()Lda;

    move-result-object v0

    invoke-static {v0}, Ldb;->b(Lda;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lde;

    iget-object v1, p0, Ldb;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Ldh;->a()Lda;

    move-result-object v0

    invoke-static {v0}, Ldb;->b(Lda;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LcG;->a()LcT;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, LcG;->a()LcT;

    goto :goto_0

    :cond_1
    invoke-static {}, LcG;->a()LcT;

    goto :goto_0
.end method

.method final a(Lda;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    invoke-static {p1}, Ldb;->b(Lda;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldb;->a:LeQ;

    iget-object v1, p0, Ldb;->a:LeQ;

    invoke-interface {v1}, LeQ;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    iget-object v3, p1, Lda;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lda;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, LeQ;->a(Landroid/content/SharedPreferences$Editor;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldb;->a:LeQ;

    iget-object v1, p0, Ldb;->a:LeQ;

    invoke-interface {v1}, LeQ;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, LeQ;->a(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method
