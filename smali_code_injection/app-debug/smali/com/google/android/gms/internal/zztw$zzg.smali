.class public final Lcom/google/android/gms/internal/zztw$zzg;
.super Lcom/google/android/gms/internal/zzle;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person$PlacesLived;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzg"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzuf;

.field private static final zzauW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzld$zza<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field mValue:Ljava/lang/String;

.field final zzFG:I

.field final zzauX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzawB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzuf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzuf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztw$zzg;->CREATOR:Lcom/google/android/gms/internal/zzuf;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztw$zzg;->zzauW:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/zztw$zzg;->zzauW:Ljava/util/HashMap;

    const-string v1, "primary"

    const-string v2, "primary"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzld$zza;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zztw$zzg;->zzauW:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzld$zza;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzFG:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzauX:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzauX:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzFG:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzawB:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zztw$zzg;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zztw$zzg;->CREATOR:Lcom/google/android/gms/internal/zzuf;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/internal/zztw$zzg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zztw$zzg;

    sget-object v3, Lcom/google/android/gms/internal/zztw$zzg;->zzauW:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzld$zza;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zztw$zzg;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zztw$zzg;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zztw$zzg;->zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zztw$zzg;->zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zztw$zzg;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_5
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztw$zzg;->zzsn()Lcom/google/android/gms/internal/zztw$zzg;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztw$zzg;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasPrimary()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzauX:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzauX:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zztw$zzg;->zzauW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzld$zza;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zztw$zzg;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zztw$zzg;->zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzawB:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zztw$zzg;->CREATOR:Lcom/google/android/gms/internal/zzuf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzuf;->zza(Lcom/google/android/gms/internal/zztw$zzg;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzld$zza;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzauX:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zztw$zzg;->mValue:Ljava/lang/String;

    return-object p1

    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zztw$zzg;->zzawB:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic zzjz()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztw$zzg;->zzsb()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public zzsb()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzld$zza<",
            "**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zztw$zzg;->zzauW:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzsn()Lcom/google/android/gms/internal/zztw$zzg;
    .locals 0

    return-object p0
.end method
