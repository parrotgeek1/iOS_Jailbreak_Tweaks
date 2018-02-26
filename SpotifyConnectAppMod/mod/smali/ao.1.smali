.class final Lao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lau;

.field final synthetic c:LaZ;

.field final synthetic d:Lfg;

.field final synthetic e:Lah;


# direct methods
.method constructor <init>(Lah;Landroid/app/Activity;Lau;LaZ;Lfg;)V
    .locals 0

    iput-object p1, p0, Lao;->e:Lah;

    iput-object p2, p0, Lao;->a:Landroid/app/Activity;

    iput-object p3, p0, Lao;->b:Lau;

    iput-object p4, p0, Lao;->c:LaZ;

    iput-object p5, p0, Lao;->d:Lfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lao;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lap;

    invoke-direct {v1, p0}, Lap;-><init>(Lao;)V

    iget-object v2, p0, Lao;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lah;->a(FI)I

    move-result v3

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lao;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    iget-object v5, p0, Lao;->c:LaZ;

    const-string v6, "com.crashlytics.CrashSubmissionPromptMessage"

    iget-object v7, v5, LaZ;->a:Lfg;

    iget-object v7, v7, Lfg;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, LaZ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lao;->a:Landroid/app/Activity;

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lao;->a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0xe

    invoke-static {v2, v5}, Lah;->a(FI)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lah;->a(FI)I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lah;->a(FI)I

    move-result v7

    const/16 v8, 0xc

    invoke-static {v2, v8}, Lah;->a(FI)I

    move-result v2

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lao;->c:LaZ;

    const-string v4, "com.crashlytics.CrashSubmissionPromptTitle"

    iget-object v5, v3, LaZ;->a:Lfg;

    iget-object v5, v5, Lfg;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, LaZ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lao;->c:LaZ;

    const-string v4, "com.crashlytics.CrashSubmissionSendTitle"

    iget-object v5, v3, LaZ;->a:Lfg;

    iget-object v5, v5, Lfg;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, LaZ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lao;->d:Lfg;

    iget-boolean v1, v1, Lfg;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Laq;

    invoke-direct {v1, p0}, Laq;-><init>(Lao;)V

    iget-object v2, p0, Lao;->c:LaZ;

    const-string v3, "com.crashlytics.CrashSubmissionCancelTitle"

    iget-object v4, v2, LaZ;->a:Lfg;

    iget-object v4, v4, Lfg;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LaZ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v1, p0, Lao;->d:Lfg;

    iget-boolean v1, v1, Lfg;->f:Z

    if-eqz v1, :cond_1

    new-instance v1, Lar;

    invoke-direct {v1, p0}, Lar;-><init>(Lao;)V

    iget-object v2, p0, Lao;->c:LaZ;

    const-string v3, "com.crashlytics.CrashSubmissionAlwaysSendTitle"

    iget-object v4, v2, LaZ;->a:Lfg;

    iget-object v4, v4, Lfg;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, LaZ;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
