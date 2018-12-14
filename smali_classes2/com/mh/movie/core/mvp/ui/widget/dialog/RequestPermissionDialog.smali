.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;
.super Landroid/app/Dialog;
.source "RequestPermissionDialog.java"

# interfaces
.implements Lme/jessyan/autosize/internal/CancelAdapt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->o:I

    .line 56
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->o:I

    .line 61
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    .line 62
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->o:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;

    return-object p0
.end method

.method private c()V
    .locals 8

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x22

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v0, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    iget v5, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    if-ne v5, v1, :cond_1

    .line 137
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    const-string v7, "\u9ebb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    const-string v6, "\u4e2a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v2, v1, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/mh/movie/core/R$color;->black:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    goto/16 :goto_4

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5

    .line 126
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    const-string v5, "\u9ebb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 128
    :cond_5
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u6d88\u8d39\u540e\uff0c\u7535\u89c6\u5267\u3001\u7efc\u827a\u3001\u52a8\u6f2b\u53ef\u89c2\u770b\u8be5\u7247\u5168\u90e8\u5267\u96c6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    goto/16 :goto_4

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    const-string v1, "\u4f7f\u7528VIP\u89c2\u5f71\u4f53\u9a8c\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    const-string v1, "\u89c2\u770b\u5f71\u7247\u4f1a\u6d88\u8017\u4e00\u5f20VIP\u89c2\u5f71\u4f53\u9a8c\u5238\uff0c\u662f\u5426\u786e\u5b9a\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    const-string v1, "\u6743\u9650\u7533\u8bf7\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    const-string v1, "\u6211\u4eec\u9700\u8981\u7684\u6587\u4ef6\u8bfb\u53d6\u6743\u9650\u88ab\u60a8\u62d2\u7edd\u6216\u8005\u7cfb\u7edf\u53d1\u751f\u9519\u8bef\u7533\u8bf7\u5931\u8d25\uff0c\u8bf7\u60a8\u5230\u8bbe\u7f6e\u754c\u9762\u624b\u52a8\u7533\u8bf7\uff0c\u5426\u8005\u529f\u80fd\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    const-string v1, "\u53bb\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 102
    :pswitch_4
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    const-string v1, "\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    const-string v1, "\u4eca\u65e5\u7f13\u5b58\u5269\u4f59\u6b21\u6570\u4e0d\u8db3\uff0c\u8bf7\u524d\u5f80\u5151\u6362\u4e2d\u5fc3\u5151\u6362\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    const-string v1, "\u5151\u6362\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->black:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 95
    :pswitch_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/mh/movie/core/R$color;->black:I

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 98
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    goto :goto_4

    .line 90
    :pswitch_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    const-string v1, "\u5f00\u901aVIP\u7279\u6743\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    const-string v1, "\u62b1\u6b49\uff01\u60a8\u7684\u9ebb\u82b1\u5e01\u4f59\u989d\u4e0d\u8db3\uff0c\u9080\u8bf7\u597d\u53cb\u6ce8\u518c\u53ef\u83b7\u5f97\u66f4\u591a\u9ebb\u82b1\u5e01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u9080\u8bf7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 84
    :pswitch_7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->k:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "\u786e\u8ba4"

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->k:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->l:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "\u53d6\u6d88"

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->l:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 2

    .line 166
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_message:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    .line 168
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_ok:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_cancel:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/mh/movie/core/R$id;->tv_dialog_message2:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->m:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->m:I

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 197
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->h:Ljava/lang/String;

    .line 198
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->n:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->n:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 204
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->i:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 206
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    const/4 v2, 0x7

    const/16 v3, 0x22

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    .line 210
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v4, "\u4e2a"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 211
    :cond_1
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->g:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 212
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/mh/movie/core/R$color;->black:I

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 213
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    :cond_2
    :goto_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/mh/movie/core/R$color;->yellow_38:I

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x4

    const-string v4, "\u9ebb"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 215
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 220
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->j:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 227
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->k:Ljava/lang/String;

    .line 228
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 234
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->l:Ljava/lang/String;

    .line 235
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->o:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_request_permission:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->setContentView(I)V

    goto :goto_0

    .line 71
    :cond_0
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_request_login:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->setContentView(I)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 74
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d()V

    .line 75
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c()V

    return-void
.end method
