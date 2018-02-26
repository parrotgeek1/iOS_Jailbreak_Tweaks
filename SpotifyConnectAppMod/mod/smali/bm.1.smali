.class final Lbm;
.super Lbr;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(JLjava/lang/String;[Lbr;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p4}, Lbr;-><init>(I[Lbr;)V

    iput-wide p1, p0, Lbm;->a:J

    iput-object p3, p0, Lbm;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x1

    iget-wide v2, p0, Lbm;->a:J

    invoke-static {v0, v2, v3}, Laf;->b(IJ)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lbm;->b:Ljava/lang/String;

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Laf;)V
    .locals 4

    const/4 v0, 0x1

    iget-wide v2, p0, Lbm;->a:J

    invoke-virtual {p1, v0, v2, v3}, Laf;->a(IJ)V

    const/4 v0, 0x2

    iget-object v1, p0, Lbm;->b:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laf;->a(ILab;)V

    return-void
.end method
