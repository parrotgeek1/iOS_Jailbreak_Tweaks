.class public final LcW;
.super LcV;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LcW;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, LcV;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LcW;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LcW;->a:Ljava/lang/Object;

    return-void
.end method
