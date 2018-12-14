.class public final Lcom/flurry/android/FlurryGamingAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/FlurryGamingAgent$AcquireReason;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FlurryGamingAgent"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logAchievement(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryGamingAgent;->logAchievement(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logAchievement(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String achievementId passed to logAchievement was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 197
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.AchievementID"

    .line 198
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p1, :cond_1

    .line 202
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 203
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string v2, "Flurry.Achievement"

    invoke-virtual {p1, v2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string v1, "Failed to log event: Flurry.Achievement"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logCharacterDeath(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCharacterDeath(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCharacterDeath(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 284
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String characterId passed to logCharacterDeath was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 290
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.CharacterID"

    .line 291
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p1, :cond_1

    .line 295
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 296
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 301
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string v2, "Flurry.CharacterDeath"

    invoke-virtual {p1, v2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 304
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string v1, "Failed to log event: Flurry.CharacterDeath"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logCharacterLevel(Ljava/lang/String;D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCharacterLevel(Ljava/lang/String;DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCharacterLevel(Ljava/lang/String;DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String characterId passed to logCharacterLevel was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 243
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.CharacterID"

    .line 244
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Level"

    .line 245
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p3, :cond_1

    .line 249
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 250
    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 255
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.CharacterLevel"

    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 258
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event Flurry.CharacterLevel"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-static {p0, p1, p2, p3, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 330
    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencyAcquired(DLjava/lang/String;Lcom/flurry/android/FlurryGamingAgent$AcquireReason;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Lcom/flurry/android/FlurryGamingAgent$AcquireReason;",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String currencyType passed to logCurrencyAcquired was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    .line 353
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "reason was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 358
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.Amount"

    .line 359
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.CurType"

    .line 360
    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Reason"

    .line 361
    invoke-virtual {p3}, Lcom/flurry/android/FlurryGamingAgent$AcquireReason;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    const-string p0, "fl.Balance"

    .line 363
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p5, :cond_3

    .line 368
    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 369
    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 374
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.VCAcquired"

    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 377
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.VCAcquired"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logCurrencySpent(DLjava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-static {p0, p1, p2, p3, v0}, Lcom/flurry/android/FlurryGamingAgent;->logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logCurrencySpent(DLjava/lang/String;Ljava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 417
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String currencyType passed to logCurrencySpent was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 423
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.Amount"

    .line 424
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.CurType"

    .line 425
    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p0, "fl.Balance"

    .line 427
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p4, :cond_2

    .line 432
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 433
    invoke-interface {v1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 438
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.VCSpent"

    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 441
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.VCSpent"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 465
    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 490
    invoke-static/range {v0 .. v6}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 508
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String itemId passed to logItemAcquired was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 514
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.ItemID"

    .line 515
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Amount"

    .line 516
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p0, "fl.Balance"

    .line 519
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const-string p0, "fl.Cost"

    .line 523
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "fl.CurType"

    .line 527
    invoke-interface {v1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p6, :cond_4

    .line 532
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 533
    invoke-interface {v1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 538
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.ItemAcquired"

    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 541
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.ItemAcquired"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 477
    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemAcquired(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 554
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 565
    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 590
    invoke-static/range {v0 .. v6}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 605
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String itemId passed to logItemDisposed was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 614
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.ItemID"

    .line 615
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Amount"

    .line 616
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p0, "fl.Balance"

    .line 619
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const-string p0, "fl.Cost"

    .line 623
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "fl.CurType"

    .line 627
    invoke-interface {v1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p6, :cond_4

    .line 632
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 633
    invoke-interface {v1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 638
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.ItemDisposed"

    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 641
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.ItemDisposed"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 577
    invoke-static/range {v0 .. v5}, Lcom/flurry/android/FlurryGamingAgent;->logItemDisposed(Ljava/lang/String;DLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelEnd(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryGamingAgent;->logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryGamingAgent;->logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelEnd(Ljava/lang/String;ZLjava/lang/Double;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Double;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String levelId passed to logLevelEnd was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 106
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.LevelID"

    .line 107
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fl.Success"

    if-eqz p1, :cond_1

    const-string p1, "True"

    goto :goto_0

    :cond_1
    const-string p1, "False"

    .line 108
    :goto_0
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p0, "fl.Score"

    .line 111
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p3, :cond_3

    .line 116
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 117
    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.LevelEnd"

    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 125
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.LevelEnd"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static logLevelStart(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryGamingAgent;->logLevelStart(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logLevelStart(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object p0, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p1, "String levelId passed to logLevelStart was null or empty."

    invoke-static {p0, p1}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.LevelID"

    .line 47
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p1, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 52
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 57
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string v2, "Flurry.LevelStart"

    invoke-virtual {p1, v2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string v1, "Failed to log event: Flurry.LevelStart"

    invoke-static {p1, v1, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static logPlayerLevel(D)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, v0}, Lcom/flurry/android/FlurryGamingAgent;->logPlayerLevel(DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0

    return-object p0
.end method

.method public static logPlayerLevel(DLjava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 151
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "fl.Level"

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p2, :cond_0

    .line 156
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 157
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    const-string p2, "Flurry.PlayerLevel"

    invoke-virtual {p1, p2, v1, p0}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    sget-object p1, Lcom/flurry/android/FlurryGamingAgent;->a:Ljava/lang/String;

    const-string p2, "Failed to log event: Flurry.PlayerLevel"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
