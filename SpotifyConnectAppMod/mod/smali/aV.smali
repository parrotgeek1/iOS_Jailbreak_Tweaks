.class final LaV;
.super LcZ;

# interfaces
.implements LaU;


# direct methods
.method public constructor <init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;)V
    .locals 6

    sget v5, LeB;->b:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LcZ;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V

    return-void
.end method


# virtual methods
.method public final a(LaT;)Z
    .locals 6

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, LcZ;->a(Ljava/util/Map;)LeC;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, LaT;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lah;->f()Lah;

    const-string v2, "2.3.8.97"

    invoke-virtual {v0, v1, v2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    iget-object v1, p1, LaT;->b:Lby;

    invoke-interface {v1}, Lby;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, LaT;->b:Lby;

    const-string v1, "report[file]"

    invoke-interface {v0}, Lby;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/octet-stream"

    invoke-interface {v0}, Lby;->d()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, LeC;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)LeC;

    move-result-object v1

    const-string v2, "report[identifier]"

    invoke-interface {v0}, Lby;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LeC;->b(Ljava/lang/String;Ljava/lang/String;)LeC;

    move-result-object v0

    invoke-static {}, LcG;->a()LcT;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending report to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LcZ;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LeC;->b()I

    move-result v1

    invoke-static {}, LcG;->a()LcT;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create report request ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v0, v3}, LeC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LcG;->a()LcT;

    invoke-static {v1}, LdF;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
