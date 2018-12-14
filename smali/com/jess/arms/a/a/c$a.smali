.class Lcom/jess/arms/a/a/c$a;
.super Ljava/lang/Object;
.source "AppDelegate.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/jess/arms/b/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/jess/arms/b/a/a;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/jess/arms/a/a/c$a;->a:Landroid/app/Application;

    .line 223
    iput-object p2, p0, Lcom/jess/arms/a/a/c$a;->b:Lcom/jess/arms/b/a/a;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method
