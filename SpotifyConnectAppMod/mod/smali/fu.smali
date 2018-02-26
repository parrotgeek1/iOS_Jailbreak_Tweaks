.class final Lfu;
.super Ljava/util/BitSet;


# instance fields
.field final synthetic a:Lft;


# direct methods
.method constructor <init>(Lft;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lfu;->a:Lft;

    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    sget v0, Lfw;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lfu;->set(IZ)V

    sget v0, Lfw;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lfu;->set(IZ)V

    return-void
.end method
