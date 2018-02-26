.class public final LdW;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, LdW;->a:I

    sput v4, LdW;->b:I

    sput v5, LdW;->c:I

    sput v0, LdW;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, LdW;->a:I

    aput v2, v0, v1

    sget v1, LdW;->b:I

    aput v1, v0, v3

    sget v1, LdW;->c:I

    aput v1, v0, v4

    sget v1, LdW;->d:I

    aput v1, v0, v5

    sput-object v0, LdW;->e:[I

    return-void
.end method

.method static a(Lec;Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lec;

    if-eqz v0, :cond_0

    check-cast p1, Lec;

    invoke-interface {p1}, Lec;->a()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0}, Lec;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    sget v0, LdW;->b:I

    goto :goto_0
.end method
