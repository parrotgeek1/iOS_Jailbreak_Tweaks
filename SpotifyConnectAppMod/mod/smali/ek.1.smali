.class public final Lek;
.super Ljava/lang/Object;

# interfaces
.implements Lei;


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lek;->a:J

    const/16 v0, 0x8

    iput v0, p0, Lek;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 6

    iget-wide v0, p0, Lek;->a:J

    long-to-double v0, v0

    iget v2, p0, Lek;->b:I

    int-to-double v2, v2

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method
