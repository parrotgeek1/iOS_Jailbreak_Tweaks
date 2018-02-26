.class final LeD;
.super LeE;


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:LeC;


# direct methods
.method constructor <init>(LeC;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, LeD;->c:LeC;

    iput-object p4, p0, LeD;->a:Ljava/io/InputStream;

    iput-object p5, p0, LeD;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, LeE;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LeD;->c:LeC;

    invoke-static {v0}, LeC;->a(LeC;)I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, LeD;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, LeD;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LeD;->c:LeC;

    return-object v0
.end method
