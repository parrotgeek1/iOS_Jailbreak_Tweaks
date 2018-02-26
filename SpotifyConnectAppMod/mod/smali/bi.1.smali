.class final Lbi;
.super Lbr;


# direct methods
.method public constructor <init>(Lbn;Lbs;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Lbr;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lbr;-><init>(I[Lbr;)V

    return-void
.end method
