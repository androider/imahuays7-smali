.class final Lcom/flurry/sdk/fb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ey$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryPrivacySession$a;

.field final synthetic b:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;Lcom/flurry/android/FlurryPrivacySession$a;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/flurry/sdk/fb$2;->b:Lcom/flurry/sdk/fb;

    iput-object p2, p0, Lcom/flurry/sdk/fb$2;->a:Lcom/flurry/android/FlurryPrivacySession$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/fb$2;->a:Lcom/flurry/android/FlurryPrivacySession$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/fb;->a(Landroid/content/Context;Lcom/flurry/android/FlurryPrivacySession$a;)V

    return-void
.end method
