.class final Lbc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lbd;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:LeO;

.field private d:Lbb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbd;-><init>(B)V

    sput-object v0, Lbc;->a:Lbd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LeO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbc;-><init>(Landroid/content/Context;LeO;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LeO;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc;->b:Landroid/content/Context;

    iput-object p2, p0, Lbc;->c:LeO;

    sget-object v0, Lbc;->a:Lbd;

    iput-object v0, p0, Lbc;->d:Lbb;

    invoke-virtual {p0, p3}, Lbc;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbc;->c:LeO;

    invoke-interface {v1}, LeO;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "log-files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lab;
    .locals 1

    iget-object v0, p0, Lbc;->d:Lbb;

    invoke-interface {v0}, Lbb;->a()Lab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lbc;->d:Lbb;

    invoke-interface {v0}, Lbb;->b()V

    sget-object v0, Lbc;->a:Lbd;

    iput-object v0, p0, Lbc;->d:Lbb;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbc;->b:Landroid/content/Context;

    const-string v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ldk;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LcG;->a()LcT;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crashlytics-userlog-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lbc;->c()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lbw;

    invoke-direct {v0, v1}, Lbw;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lbc;->d:Lbb;

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 7

    invoke-direct {p0}, Lbc;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".temp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/16 v6, 0x14

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbc;->d:Lbb;

    invoke-interface {v0}, Lbb;->c()V

    return-void
.end method
