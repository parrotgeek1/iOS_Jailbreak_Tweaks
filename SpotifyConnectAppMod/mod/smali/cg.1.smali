.class public final Lcg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lch;


# direct methods
.method public constructor <init>(Lch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcg;->a:Lch;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcg;->a:Lch;

    invoke-interface {v0}, Lch;->a()V

    return-void
.end method

.method public final execute(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcg;->a:Lch;

    invoke-interface {v0, p1}, Lch;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcg;->a:Lch;

    invoke-interface {v0}, Lch;->b()V

    return-void
.end method
