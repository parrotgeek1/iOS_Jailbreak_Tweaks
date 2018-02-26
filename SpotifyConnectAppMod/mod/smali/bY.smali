.class final LbY;
.super Ljava/lang/Object;

# interfaces
.implements LbQ;


# static fields
.field private static final a:[Ljava/io/File;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ldp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, LbY;->a:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    new-instance v0, LdG;

    invoke-direct {v0}, LdG;-><init>()V

    invoke-direct {p0, p1, v0}, LbY;-><init>(Ljava/io/File;Ldp;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ldp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbY;->b:Ljava/io/File;

    iput-object p2, p0, LbY;->c:Ldp;

    return-void
.end method

.method private d()[Ljava/io/File;
    .locals 1

    iget-object v0, p0, LbY;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LbY;->a:[Ljava/io/File;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LbY;->c:Ldp;

    invoke-interface {v1}, Ldp;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ndk.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, LbY;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final b()Ljava/io/File;
    .locals 10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, LbY;->d()[Ljava/io/File;

    move-result-object v8

    const-wide/16 v2, 0x0

    move v6, v7

    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_0

    aget-object v4, v8, v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v9, v0, v2

    if-lez v9, :cond_1

    move-object v2, v4

    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v5, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-object v5

    :cond_1
    move-wide v0, v2

    move-object v2, v5

    goto :goto_1
.end method

.method public final c()V
    .locals 4

    invoke-direct {p0}, LbY;->d()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
