.class final Lfd;
.super LcZ;

# interfaces
.implements Lfr;


# direct methods
.method public constructor <init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;)V
    .locals 6

    sget v5, LeB;->a:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lfd;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V

    return-void
.end method

.method private constructor <init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, LcZ;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse settings JSON from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LcZ;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LcG;->a()LcT;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(LeC;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, LeC;->a(Ljava/lang/String;Ljava/lang/String;)LeC;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lfq;)Lorg/json/JSONObject;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "build_version"

    iget-object v3, p1, Lfq;->j:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "display_version"

    iget-object v3, p1, Lfq;->i:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget v3, p1, Lfq;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lfq;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "icon_hash"

    iget-object v3, p1, Lfq;->l:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Lfq;->h:Ljava/lang/String;

    invoke-static {v1}, Ldk;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "instance"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v2}, Lfd;->a(Ljava/util/Map;)LeC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    const-string v3, "X-CRASHLYTICS-API-KEY"

    iget-object v4, p1, Lfq;->a:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v4, "android"

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v4, p0, Lfd;->b:LcQ;

    invoke-virtual {v4}, LcQ;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-DEVICE-MODEL"

    iget-object v4, p1, Lfq;->b:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-OS-BUILD-VERSION"

    iget-object v4, p1, Lfq;->c:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    iget-object v4, p1, Lfq;->d:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-ADVERTISING-TOKEN"

    iget-object v4, p1, Lfq;->e:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-INSTALLATION-ID"

    iget-object v4, p1, Lfq;->f:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-CRASHLYTICS-ANDROID-ID"

    iget-object v4, p1, Lfq;->g:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lfd;->a(LeC;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LcG;->a()LcT;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requesting settings from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LcZ;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LcG;->a()LcT;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Settings query params were: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LeC;->b()I

    move-result v2

    invoke-static {}, LcG;->a()LcT;

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xca

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_4

    :cond_2
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v1}, LeC;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfd;->a(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {}, LcG;->a()LcT;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings request ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v1, v3}, LeC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-object v0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to retrieve settings from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, LcZ;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, LcT;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {}, LcG;->a()LcT;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Settings request ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v1, v3}, LeC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method
