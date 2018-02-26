.class final Lbn;
.super Lbr;


# direct methods
.method public constructor <init>(Lbt;Lbs;Lbs;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Lbr;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    aput-object p1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v2, v0}, Lbr;-><init>(I[Lbr;)V

    return-void
.end method
