.class public abstract Leo;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field protected final b:Landroid/content/Context;

.field protected final c:Len;

.field public final d:Ldp;

.field protected final e:Ler;

.field protected volatile f:J

.field protected final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Len;Ldp;Ler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Leo;->g:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Leo;->b:Landroid/content/Context;

    iput-object p2, p0, Leo;->c:Len;

    iput-object p4, p0, Leo;->e:Ler;

    iput-object p3, p0, Leo;->d:Ldp;

    iget-object v0, p0, Leo;->d:Ldp;

    invoke-interface {v0}, Ldp;->a()J

    move-result-wide v0

    iput-wide v0, p0, Leo;->f:J

    const/16 v0, 0x64

    iput v0, p0, Leo;->a:I

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Les;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Leo;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Leo;->c:Len;

    invoke-interface {v0, p1}, Len;->a(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Leo;->e:Ler;

    invoke-virtual {p0}, Leo;->c()I

    move-result v3

    invoke-interface {v2, v1, v3}, Ler;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Leo;->e:Ler;

    invoke-interface {v6}, Ler;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    invoke-virtual {p0}, Leo;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leo;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Ldk;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Leo;->d()Z

    :cond_0
    iget-object v1, p0, Leo;->e:Ler;

    invoke-interface {v1, v0}, Ler;->a([B)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Leo;->e:Ler;

    invoke-interface {v0, p1}, Ler;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Leo;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x1f40

    return v0
.end method

.method public final d()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Leo;->e:Ler;

    invoke-interface {v2}, Ler;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Leo;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Leo;->e:Ler;

    invoke-interface {v3, v2}, Ler;->a(Ljava/lang/String;)V

    iget-object v3, p0, Leo;->b:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "generated new file %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldk;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Leo;->d:Ldp;

    invoke-interface {v1}, Ldp;->a()J

    move-result-wide v2

    iput-wide v2, p0, Leo;->f:J

    move v1, v0

    :cond_0
    iget-object v0, p0, Leo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Les;

    :try_start_0
    invoke-interface {v0}, Les;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Leo;->b:Landroid/content/Context;

    const-string v3, "One of the roll over listeners threw an exception"

    invoke-static {v0, v3}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Leo;->e:Ler;

    invoke-interface {v0}, Ler;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Leo;->e:Ler;

    iget-object v1, p0, Leo;->e:Ler;

    invoke-interface {v1}, Ler;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ler;->a(Ljava/util/List;)V

    iget-object v0, p0, Leo;->e:Ler;

    invoke-interface {v0}, Ler;->e()V

    return-void
.end method

.method public final g()V
    .locals 9

    iget-object v0, p0, Leo;->e:Ler;

    invoke-interface {v0}, Ler;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Leo;->b()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Leo;->b:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Ldk;->e(Landroid/content/Context;)V

    new-instance v1, Ljava/util/TreeSet;

    new-instance v3, Lep;

    invoke-direct {v3, p0}, Lep;-><init>(Leo;)V

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Leo;->a(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Leq;

    invoke-direct {v6, v0, v4, v5}, Leq;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq;

    iget-object v0, v0, Leq;->a:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_3
    iget-object v0, p0, Leo;->e:Ler;

    invoke-interface {v0, v3}, Ler;->a(Ljava/util/List;)V

    goto :goto_0
.end method
