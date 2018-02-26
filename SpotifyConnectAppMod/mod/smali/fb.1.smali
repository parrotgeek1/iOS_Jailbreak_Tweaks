.class final Lfb;
.super Ljava/lang/Object;

# interfaces
.implements Lfm;


# instance fields
.field private final a:Lfq;

.field private final b:Lfp;

.field private final c:Ldp;

.field private final d:LeY;

.field private final e:Lfr;

.field private final f:LcQ;

.field private final g:LeQ;


# direct methods
.method public constructor <init>(LcQ;Lfq;Ldp;Lfp;LeY;Lfr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb;->f:LcQ;

    iput-object p2, p0, Lfb;->a:Lfq;

    iput-object p3, p0, Lfb;->c:Ldp;

    iput-object p4, p0, Lfb;->b:Lfp;

    iput-object p5, p0, Lfb;->d:LeY;

    iput-object p6, p0, Lfb;->e:Lfr;

    new-instance v0, LeR;

    iget-object v1, p0, Lfb;->f:LcQ;

    invoke-direct {v0, v1}, LeR;-><init>(LcQ;)V

    iput-object v0, p0, Lfb;->g:LeQ;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Lfl;)Lfn;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lfl;->b:Lfl;

    invoke-virtual {v1, p1}, Lfl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lfb;->d:LeY;

    invoke-interface {v1}, LeY;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lfb;->b:Lfp;

    iget-object v3, p0, Lfb;->c:Ldp;

    invoke-interface {v1, v3, v2}, Lfp;->a(Ldp;Lorg/json/JSONObject;)Lfn;

    move-result-object v1

    const-string v3, "Loaded cached settings: "

    invoke-static {v2, v3}, Lfb;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v2, p0, Lfb;->c:Ldp;

    invoke-interface {v2}, Ldp;->a()J

    move-result-wide v2

    sget-object v4, Lfl;->c:Lfl;

    invoke-virtual {v4, p1}, Lfl;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, v1, Lfn;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_3

    :cond_0
    :try_start_1
    invoke-static {}, LcG;->a()LcT;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {}, LcG;->a()LcT;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to get cached settings"

    invoke-interface {v2, v3, v4, v1}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    :try_start_3
    invoke-static {}, LcG;->a()LcT;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2
.end method

.method private b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lfb;->f:LcQ;

    iget-object v2, v2, LcQ;->p:Landroid/content/Context;

    invoke-static {v2}, Ldk;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ldk;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lfn;
    .locals 1

    sget-object v0, Lfl;->a:Lfl;

    invoke-virtual {p0, v0}, Lfb;->a(Lfl;)Lfn;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfl;)Lfn;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, LcG;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfb;->g:LeQ;

    invoke-interface {v0}, LeQ;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "existing_instance_identifier"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lfb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lfb;->b(Lfl;)Lfn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lfb;->e:Lfr;

    iget-object v2, p0, Lfb;->a:Lfq;

    invoke-interface {v0, v2}, Lfr;->a(Lfq;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lfb;->b:Lfp;

    iget-object v3, p0, Lfb;->c:Ldp;

    invoke-interface {v2, v3, v0}, Lfp;->a(Ldp;Lorg/json/JSONObject;)Lfn;

    move-result-object v1

    iget-object v2, p0, Lfb;->d:LeY;

    iget-wide v4, v1, Lfn;->g:J

    invoke-interface {v2, v4, v5, v0}, LeY;->a(JLorg/json/JSONObject;)V

    const-string v2, "Loaded settings: "

    invoke-static {v0, v2}, Lfb;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0}, Lfb;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lfb;->g:LeQ;

    invoke-interface {v2}, LeQ;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "existing_instance_identifier"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lfb;->g:LeQ;

    invoke-interface {v0, v2}, LeQ;->a(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v1

    if-nez v0, :cond_2

    :try_start_2
    sget-object v1, Lfl;->c:Lfl;

    invoke-direct {p0, v1}, Lfb;->b(Lfl;)Lfn;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method
