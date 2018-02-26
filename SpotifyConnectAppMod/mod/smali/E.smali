.class final LE;
.super Leo;


# instance fields
.field a:LeT;


# direct methods
.method constructor <init>(Landroid/content/Context;LM;Ldp;Ler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Leo;-><init>(Landroid/content/Context;Len;Ldp;Ler;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sa_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LE;->d:Ldp;

    invoke-interface {v1}, Ldp;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()I
    .locals 1

    iget-object v0, p0, LE;->a:LeT;

    if-nez v0, :cond_0

    invoke-super {p0}, Leo;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LE;->a:LeT;

    iget v0, v0, LeT;->e:I

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    iget-object v0, p0, LE;->a:LeT;

    if-nez v0, :cond_0

    invoke-super {p0}, Leo;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LE;->a:LeT;

    iget v0, v0, LeT;->c:I

    goto :goto_0
.end method
