.class abstract LeS;
.super LcZ;


# direct methods
.method public constructor <init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, LcZ;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V

    return-void
.end method

.method private a(LeC;LeV;)LeC;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "app[identifier]"

    iget-object v1, p2, LeV;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "app[name]"

    iget-object v2, p2, LeV;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "app[display_version]"

    iget-object v2, p2, LeV;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "app[build_version]"

    iget-object v2, p2, LeV;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "app[source]"

    iget v2, p2, LeV;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/Number;)LeC;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p2, LeV;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p2, LeV;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v2

    iget-object v0, p2, LeV;->e:Ljava/lang/String;

    invoke-static {v0}, Ldk;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, LeV;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    :cond_0
    iget-object v0, p2, LeV;->j:Lff;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, LeS;->b:LcQ;

    iget-object v0, v0, LcQ;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p2, LeV;->j:Lff;

    iget v3, v3, Lff;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v0, "app[icon][hash]"

    iget-object v3, p2, LeV;->j:Lff;

    iget-object v3, v3, Lff;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v3, "app[icon][data]"

    const-string v4, "icon.png"

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v3, v4, v5, v1}, LeC;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)LeC;

    move-result-object v0

    const-string v3, "app[icon][width]"

    iget-object v4, p2, LeV;->j:Lff;

    iget v4, v4, Lff;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LeC;->a(Ljava/lang/String;Ljava/lang/Number;)LeC;

    move-result-object v0

    const-string v3, "app[icon][height]"

    iget-object v4, p2, LeV;->j:Lff;

    iget v4, v4, Lff;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LeC;->a(Ljava/lang/String;Ljava/lang/Number;)LeC;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p2, LeV;->k:Ljava/util/Collection;

    if-eqz v0, :cond_2

    iget-object v0, p2, LeV;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcS;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "app[build][libraries][%s][version]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, LcS;->a:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, LcS;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "app[build][libraries][%s][type]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, LcS;->a:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, LcS;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to find app icon with resource ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, LeV;->j:Lff;

    iget v6, v6, Lff;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(LeV;)Z
    .locals 4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, LcZ;->a(Ljava/util/Map;)LeC;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, LeV;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, LeS;->b:LcQ;

    invoke-virtual {v2}, LcQ;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LeS;->a(LeC;LeV;)LeC;

    move-result-object v1

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sending app info to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LcZ;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, LeV;->j:Lff;

    if-eqz v0, :cond_0

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App icon hash is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LeV;->j:Lff;

    iget-object v2, v2, Lff;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App icon size is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LeV;->j:Lff;

    iget v2, v2, Lff;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, LeV;->j:Lff;

    iget v2, v2, Lff;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, LeC;->b()I

    move-result v2

    const-string v0, "POST"

    invoke-virtual {v1}, LeC;->a()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    :goto_0
    invoke-static {}, LcG;->a()LcT;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " app request ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v1, v3}, LeC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LcG;->a()LcT;

    invoke-static {v2}, LdF;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "Update"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
