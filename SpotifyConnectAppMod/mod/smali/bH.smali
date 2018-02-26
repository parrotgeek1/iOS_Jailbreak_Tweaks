.class final LbH;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    sput v0, LbH;->a:I

    const/16 v0, 0xc

    sput v0, LbH;->b:I

    const/16 v0, 0x10

    sput v0, LbH;->c:I

    const/16 v0, 0x1a

    sput v0, LbH;->d:I

    return-void
.end method

.method static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
