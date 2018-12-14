.class final Lcom/flurry/sdk/bp$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bp;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/flurry/sdk/bp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/flurry/sdk/bp$8;->c:Lcom/flurry/sdk/bp;

    iput-object p2, p0, Lcom/flurry/sdk/bp$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/bp$8;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1148
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 2144
    iget-object v0, v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    .line 1148
    iget-object v1, p0, Lcom/flurry/sdk/bp$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/bp$8;->b:Ljava/util/Map;

    .line 1149
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/at;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
