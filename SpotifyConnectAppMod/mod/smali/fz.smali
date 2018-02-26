.class public final enum Lfz;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfz;

.field public static final enum b:Lfz;

.field public static final enum c:Lfz;

.field public static final enum d:Lfz;

.field public static final enum e:Lfz;

.field private static final synthetic f:[Lfz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lfz;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->a:Lfz;

    new-instance v0, Lfz;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->b:Lfz;

    new-instance v0, Lfz;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->c:Lfz;

    new-instance v0, Lfz;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v5}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->d:Lfz;

    new-instance v0, Lfz;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->e:Lfz;

    const/4 v0, 0x5

    new-array v0, v0, [Lfz;

    sget-object v1, Lfz;->a:Lfz;

    aput-object v1, v0, v2

    sget-object v1, Lfz;->b:Lfz;

    aput-object v1, v0, v3

    sget-object v1, Lfz;->c:Lfz;

    aput-object v1, v0, v4

    sget-object v1, Lfz;->d:Lfz;

    aput-object v1, v0, v5

    sget-object v1, Lfz;->e:Lfz;

    aput-object v1, v0, v6

    sput-object v0, Lfz;->f:[Lfz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfz;
    .locals 1

    const-class v0, Lfz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfz;

    return-object v0
.end method

.method public static values()[Lfz;
    .locals 1

    sget-object v0, Lfz;->f:[Lfz;

    invoke-virtual {v0}, [Lfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfz;

    return-object v0
.end method
