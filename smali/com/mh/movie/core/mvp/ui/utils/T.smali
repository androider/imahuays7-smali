.class public Lcom/mh/movie/core/mvp/ui/utils/T;
.super Ljava/lang/Object;
.source "T.java"


# static fields
.field private static isShow:Z = true

.field private static oldMsg:Ljava/lang/String;

.field private static time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatShow(F)Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "%.2f\u4e07"

    const/4 v1, 0x1

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 1

    .line 107
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/T;->isShow:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 92
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/T;->isShow:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    const/4 p2, 0x0

    .line 94
    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showLong(Landroid/content/Context;I)V
    .locals 1

    .line 77
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/T;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 63
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/T;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 66
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(Landroid/content/Context;I)V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/T;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    .line 51
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/utils/T;->isShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x11

    .line 36
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 131
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/T;->oldMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mh/movie/core/mvp/ui/utils/T;->time:J

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mh/movie/core/mvp/ui/utils/T;->time:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x7d0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 137
    invoke-static {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mh/movie/core/mvp/ui/utils/T;->time:J

    .line 141
    :cond_1
    :goto_0
    sput-object p1, Lcom/mh/movie/core/mvp/ui/utils/T;->oldMsg:Ljava/lang/String;

    return-void
.end method
