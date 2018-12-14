.class Lcom/mh/movie/core/mvp/ui/MHApplication$1;
.super Ljava/lang/Object;
.source "MHApplication.java"

# interfaces
.implements Lme/jessyan/autosize/onAdaptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/MHApplication;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/MHApplication;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/MHApplication;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/MHApplication$1;->a:Lcom/mh/movie/core/mvp/ui/MHApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdaptAfter(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 3

    .line 241
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "%s onAdaptAfter!"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdaptBefore(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 3

    .line 236
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "%s onAdaptBefore!"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
