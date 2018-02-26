.class final LaC;
.super Ljava/lang/Object;

# interfaces
.implements LeL;


# instance fields
.field private final a:Lbv;


# direct methods
.method public constructor <init>(Lbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaC;->a:Lbv;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, LaC;->a:Lbv;

    invoke-interface {v0}, Lbv;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LaC;->a:Lbv;

    invoke-interface {v0}, Lbv;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LaC;->a:Lbv;

    invoke-interface {v0}, Lbv;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
