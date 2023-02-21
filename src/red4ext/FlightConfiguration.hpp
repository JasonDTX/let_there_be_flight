#pragma once

#include <RED4ext/RED4ext.hpp>
#include <RED4ext/Scripting/Natives/Generated/ent/Entity.hpp>
#include <RED4ext/Scripting/Natives/Generated/ent/MeshComponent.hpp>
#include <RED4ext/Scripting/Natives/Generated/ent/PhysicalMeshComponent.hpp>
#include <RED4ext/Scripting/Natives/Generated/ent/SlotComponent.hpp>
#include <RED4ext/Scripting/Natives/Generated/ent/VisualControllerComponent.hpp>
#include "Engine/RTTIClass.hpp"
#include "FlightThruster.hpp"
#include "FlightComponent.hpp"
#include "EntityAddComponent.hpp"

struct IFlightThruster;

class IFlightConfiguration : public Engine::RTTIClass<IFlightConfiguration, RED4ext::IScriptable> {
public:
  RED4ext::Handle<FlightComponent> component;
  RED4ext::DynArray<RED4ext::Handle<IFlightThruster>> thrusters;
  
  void Setup(FlightComponent* component);
  void AddSlots(RED4ext::ent::SlotComponent* slotComponent);
  void AddMeshes(RED4ext::ent::Entity * entity, RED4ext::ent::VisualControllerComponent * vcc);

  //void AddMesh() {
  //  int index = 0;
  //  float value = 0;
  //  auto getEngineMesh = GetType()->GetFunction("GetEngineMesh");
  //  if (getEngineMesh) {
  //    auto rtti = RED4ext::CRTTISystem::Get();
  //    RED4ext::CName name;
  //    auto result = RED4ext::CStackType(rtti->GetType("CName"), &name);
  //    auto stack = RED4ext::CStack(this, nullptr, 0, &result);
  //    getEngineMesh->Execute(&stack);
  //    value = *(RED4ext::CName *)result.value;
  //  }
  //}

private:
  friend Descriptor;
  static void OnRegister(Descriptor *aType) {
    aType->flags.isAbstract = true;
    // aType->flags.b20000 = true;
    // aType->flags.isAlwaysTransient = true;
  }

  static void OnDescribe(Descriptor *aType, RED4ext::CRTTISystem *) {
    //aType->AddFunction<&IFlightConfiguration::AddMesh>("AddMesh");
  }
};
RED4EXT_ASSERT_OFFSET(IFlightConfiguration, component, 0x40);
RED4EXT_ASSERT_OFFSET(IFlightConfiguration, thrusters, 0x50);