/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "iam_members" {
  description = "IAM members keyed by secret name and role."
  type        = map(map(list(string)))
  default     = {}
}

variable "iam_roles" {
  description = "IAM roles keyed by secret name."
  type        = map(list(string))
  default     = {}
}

variable "labels" {
  description = "Optional labels for each secret."
  type        = map(map(string))
  default     = {}
}

variable "secrets" {
  description = "Map of secrets to manage and their locations. If locations is null, automatic management will be set."
  type        = map(list(string))
  default     = {}
}

variable "project_id" {
  description = "Project id where the keyring will be created."
  type        = string
}

variable "versions" {
  description = "Optional versions to manage for each secret. Version names are only used internally to track individual versions."
  type = map(map(object({
    enabled = bool
    data    = string
  })))
  default = {}
}
