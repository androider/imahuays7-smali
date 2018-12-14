.class final Lcom/flurry/android/FlurryAgent$2;
.super Lcom/flurry/sdk/bo$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/FlurryAgent;->logPayment(ILandroid/content/Intent;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/flurry/android/FlurryAgent$2;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/flurry/android/FlurryAgent$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/FlurryAgent$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/FlurryAgent$2;->d:Ljava/util/Map;

    invoke-direct {p0}, Lcom/flurry/sdk/bo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/flurry/sdk/bo$c;)V
    .locals 7

    if-eqz p2, :cond_2

    .line 1211
    iget-wide v0, p2, Lcom/flurry/sdk/bo$c;->b:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 1031
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fl.Quantity"

    const-string v3, "1"

    .line 1032
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fl.ProductId"

    .line 1033
    iget-object v3, p0, Lcom/flurry/android/FlurryAgent$2;->a:Lorg/json/JSONObject;

    const-string v4, "productId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fl.Price"

    .line 1034
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%1$.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1035
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fl.Currency"

    .line 1215
    iget-object v1, p2, Lcom/flurry/sdk/bo$c;->c:Ljava/lang/String;

    .line 1036
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fl.ProductName"

    .line 1219
    iget-object v1, p2, Lcom/flurry/sdk/bo$c;->d:Ljava/lang/String;

    .line 1037
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fl.ProductType"

    .line 2203
    iget-object p2, p2, Lcom/flurry/sdk/bo$c;->a:Ljava/lang/String;

    .line 1038
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "fl.TransactionIdentifier"

    .line 1039
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent$2;->a:Lorg/json/JSONObject;

    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "fl.OrderJSON"

    .line 1041
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent$2;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "fl.OrderJSONSignature"

    .line 1043
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent$2;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    .line 1045
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent$2;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent$2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1047
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1048
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1052
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    const-string v1, "Flurry.purchase"

    .line 1053
    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    return-void

    .line 1055
    :cond_2
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load SKU Details from Google for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent$2;->a:Lorg/json/JSONObject;

    const-string v2, "productId"

    .line 1056
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'. Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1055
    invoke-static {p2, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
