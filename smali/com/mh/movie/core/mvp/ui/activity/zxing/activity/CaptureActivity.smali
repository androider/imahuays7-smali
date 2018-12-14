.class public Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/mh/movie/core/mvp/a/g$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/CapturePresenter;",
        ">;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Lcom/mh/movie/core/mvp/a/g$b;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "CaptureActivity"


# instance fields
.field private d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

.field private e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

.field private f:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;

.field private g:Landroid/view/SurfaceView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

.field private l:Landroid/graphics/Rect;

.field private m:Z

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->g:Landroid/view/SurfaceView;

    .line 93
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->l:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->m:Z

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    .line 285
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->c:Ljava/lang/String;

    const-string v0, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->a(Landroid/view/SurfaceHolder;)V

    .line 295
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    if-nez p1, :cond_2

    .line 296
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    const/16 v1, 0x300

    invoke-direct {p1, p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->m()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->c:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->l()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 301
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->l()V

    :goto_0
    return-void
.end method

.method private a(Lcom/google/zxing/g;)V
    .locals 7

    .line 249
    invoke-virtual {p1}, Lcom/google/zxing/g;->a()Ljava/lang/String;

    move-result-object p1

    .line 251
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v0, "?"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    const-string v0, "\u626b\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string v0, "&"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    const-string v5, "="

    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 265
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "code"

    .line 267
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "code"

    .line 268
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "mOkgb2Du5z5tZpWe"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->decryptHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 270
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    const-string v2, "\u626b\u7801\u6210\u529f\u8bf7\u6c42\u4e2d"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 273
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    const-string v0, "\u626b\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 276
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    const-string v0, "\u626b\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 253
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    const-string v0, "\u626b\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 279
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private h()V
    .locals 1

    .line 143
    sget v0, Lcom/mh/movie/core/R$id;->tv_capture_tips:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->n:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/mh/movie/core/R$id;->tv_capture_get_tv:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->o:Landroid/widget/TextView;

    .line 145
    sget v0, Lcom/mh/movie/core/R$id;->capture_preview:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->g:Landroid/view/SurfaceView;

    .line 146
    sget v0, Lcom/mh/movie/core/R$id;->capture_container:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->h:Landroid/widget/RelativeLayout;

    .line 147
    sget v0, Lcom/mh/movie/core/R$id;->capture_crop_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->i:Landroid/widget/RelativeLayout;

    .line 148
    sget v0, Lcom/mh/movie/core/R$id;->capture_scan_line:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->j:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    return-void
.end method

.method private k()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 157
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    sget v5, Lcom/mh/movie/core/R$color;->grey_cc:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/b;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l()V
    .locals 3

    .line 313
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    sget v1, Lcom/mh/movie/core/R$string;->app_name:I

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Camera error"

    .line 315
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    .line 316
    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity$1;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private m()V
    .locals 8

    .line 355
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 356
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->e()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x2

    .line 359
    new-array v2, v2, [I

    .line 360
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 362
    aget v3, v2, v3

    const/4 v4, 0x1

    .line 363
    aget v2, v2, v4

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->n()I

    move-result v4

    sub-int/2addr v2, v4

    .line 365
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    .line 366
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    .line 369
    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    .line 370
    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    mul-int v3, v3, v0

    .line 373
    div-int/2addr v3, v6

    mul-int v2, v2, v1

    .line 375
    div-int/2addr v2, v7

    mul-int v4, v4, v0

    .line 378
    div-int/2addr v4, v6

    mul-int v5, v5, v1

    .line 380
    div-int/2addr v5, v7

    .line 383
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    add-int/2addr v5, v2

    invoke-direct {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->l:Landroid/graphics/Rect;

    return-void
.end method

.method private n()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 388
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 392
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 394
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getHTML_URL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZI)V

    return-void
.end method

.method public a(Lcom/google/zxing/g;Landroid/os/Bundle;)V
    .locals 0

    .line 240
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;->a()V

    .line 241
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->a(Lcom/google/zxing/g;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    invoke-static {}, Lcom/mh/movie/core/a/a/s;->a()Lcom/mh/movie/core/a/a/s$a;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/s$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/s;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/s;-><init>(Lcom/mh/movie/core/mvp/a/g$b;)V

    .line 111
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/s$a;->a(Lcom/mh/movie/core/a/b/s;)Lcom/mh/movie/core/a/a/s$a;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/s$a;->a()Lcom/mh/movie/core/a/a/g;

    move-result-object p1

    .line 113
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/g;->a(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->onBackPressed()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    const-string v1, "\u767b\u5f55\u6210\u529f!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 337
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->onBackPressed()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public e()Landroid/os/Handler;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    return-object v0
.end method

.method public f()Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    return-object v0
.end method

.method public g()Landroid/graphics/Rect;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->l:Landroid/graphics/Rect;

    return-object v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 123
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget p1, Lcom/mh/movie/core/R$layout;->activity_capture:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->r:Landroid/content/Context;

    sget v0, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    .line 130
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->h()V

    .line 131
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->k()V

    .line 132
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;

    .line 134
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const v9, 0x3f666666    # 0.9f

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1194

    .line 135
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;->d()V

    .line 208
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->a()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;->b()V

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->b()V

    .line 199
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->m:Z

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->g:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 202
    :cond_1
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    .line 173
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->e:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;

    .line 177
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->m:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->g:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->g:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->f:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/b;->c()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    .line 214
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->c:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->m:Z

    .line 218
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->m:Z

    return-void
.end method
