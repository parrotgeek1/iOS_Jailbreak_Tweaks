.class public final Lfj;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lfi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfi;-><init>(B)V

    sput-object v0, Lfj;->a:Lfi;

    return-void
.end method

.method public static synthetic a()Lfi;
    .locals 1

    sget-object v0, Lfj;->a:Lfi;

    return-object v0
.end method
