.class final Lep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Leo;


# direct methods
.method constructor <init>(Leo;)V
    .locals 0

    iput-object p1, p0, Lep;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Leq;

    check-cast p2, Leq;

    iget-wide v0, p1, Leq;->b:J

    iget-wide v2, p2, Leq;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
