.class final Lbw;
.super Ljava/lang/Object;

# interfaces
.implements Lbb;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private c:LdA;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw;->a:Ljava/io/File;

    const/high16 v0, 0x10000

    iput v0, p0, Lbw;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lab;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lbw;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lbw;->c:LdA;

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, LdA;

    iget-object v2, p0, Lbw;->a:Ljava/io/File;

    invoke-direct {v1, v2}, LdA;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lbw;->c:LdA;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lbw;->c:LdA;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    aput v6, v1, v6

    iget-object v0, p0, Lbw;->c:LdA;

    invoke-virtual {v0}, LdA;->a()I

    move-result v0

    new-array v2, v0, [B

    :try_start_1
    iget-object v0, p0, Lbw;->c:LdA;

    new-instance v3, Lbx;

    invoke-direct {v3, p0, v2, v1}, Lbx;-><init>(Lbw;[B[I)V

    invoke-virtual {v0, v3}, LdA;->a(LdE;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    aget v0, v1, v6

    invoke-static {v2, v0}, Lab;->a([BI)Lab;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not open log file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lbw;->a:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbw;->c:LdA;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Ldk;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbw;->c:LdA;

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lbw;->b()V

    iget-object v0, p0, Lbw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
